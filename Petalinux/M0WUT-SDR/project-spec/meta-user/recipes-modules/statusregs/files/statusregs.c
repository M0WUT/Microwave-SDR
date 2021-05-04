/*  statusregs.c - The simplest kernel module.

* Copyright (C) 2013 - 2016 Xilinx, Inc
* Modified from sample kernel module code, Dan McGraw M0WUT
*
*   This program is free software; you can redistribute it and/or modify
*   it under the terms of the GNU General Public License as published by
*   the Free Software Foundation; either version 2 of the License, or
*   (at your option) any later version.

*   This program is distributed in the hope that it will be useful,
*   but WITHOUT ANY WARRANTY; without even the implied warranty of
*   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*   GNU General Public License for more details.
*
*   You should have received a copy of the GNU General Public License along
*   with this program. If not, see <http://www.gnu.org/licenses/>.

*/


#include "statusregs.h"

/* Standard module information, edit as appropriate */
MODULE_LICENSE("GPL");
MODULE_AUTHOR
    ("M0WUT");
MODULE_DESCRIPTION
    ("statusregs - Provides SDR status to userspace");

#define DRIVER_NAME "statusregs"

#define BUF_SIZE 32

static int deviceOpen = 0;
static unsigned int address = 0;  // Address in memory we are currently reading to / writing from

static char buffer[BUF_SIZE];
static char *msgPtr;

static struct statusregs_local *lp = NULL;

static unsigned int read(unsigned int offset){
	unsigned int x;
	x = ioread32(lp->base_addr + 4 * offset);
	#ifdef DEBUG 
		printk(KERN_INFO "Read value %u (%#010x) from register %d\n", x, x, offset);
	#endif
	return x;
}


static void write(unsigned int offset, unsigned int data){
	#ifdef DEBUG
		printk(KERN_INFO "Writing data %u (%#010x) to address %d\n", data, data, offset);
	#endif
	iowrite32(data, lp->base_addr + 4 * offset);
}

static struct file_operations fops = {
	.read = status_read,
	.write = status_write,
	.open = status_open,
	.release = status_release,
	.unlocked_ioctl = status_ioctl
};


long status_ioctl(struct file *file_p, unsigned int ioctl_num, unsigned long ioctl_param){
	if(ioctl_param > OFFSET_LIMIT){
		printk(KERN_ERR "Attempted to write to out of bounds memory address %lu\n", ioctl_param);
		return -EINVAL;
	} else
		address = ioctl_param;

	#ifdef DEBUG
		printk(KERN_INFO "Address set to %u\n", address);
	#endif

	// Overwrite buffer to ensure no old data is in there
	sprintf(buffer, "%u", read(address));  // Load the data from reg 0 into buffer
	msgPtr = buffer;  // Point at first char in buffer
	return 0;
}

static int status_open(struct inode *inode_p, struct file *file_p){
	if(deviceOpen)
		return -EBUSY;

	// Check we're reading the memory we expect
	if (((read(OFFSET_ID) >> 16) & 0xFFFF) != 0xBEEF) {
		printk(KERN_ERR "statusregs: Status Memory Validation failed\n");
		return -ENODEV;
	}

	deviceOpen++;
	try_module_get(THIS_MODULE);

	address = OFFSET_ID;
	sprintf(buffer, "%u\n", read(address));  // Load the data from reg 0 into buffer
	msgPtr = buffer;  // Point at first char in buffer
	
	return 0;
}


static int status_release(struct inode *inode_p, struct file *file_p){
	deviceOpen--;

	module_put(THIS_MODULE);
	return 0;
}

static ssize_t status_read(struct file *file_p, char *outBuffer_p, size_t length, loff_t *offset){

	int bytesRead;
	bytesRead = 0;

	if(*msgPtr == 0)
		return 0;
	else {
		// Copy the message to the output buffer as long as the output buffer has space and we haven't finished
		while(length && *msgPtr){
			put_user(*msgPtr++, outBuffer_p++);
			length--;
			bytesRead++;
		}
	}

	return bytesRead;
}

static ssize_t status_write(struct file *file_p, const char *inBuffer_p, size_t length, loff_t *offset){
	int bytes_written = 0;
	int i = 0;  // Used for looping through string
	uint32_t value = 0;  // Value represented by the string
	// Sanity check value
	if(offset == NULL || *offset > BUF_SIZE)
		return -EINVAL;

	while((bytes_written <= length) && (*offset < BUF_SIZE)){
		get_user(buffer[*offset], &inBuffer_p[bytes_written]);
		*offset = *offset + 1;
		bytes_written++;
	}

	if(bytes_written != length + 1){
		printk(KERN_ERR "Statusregs: Write operation failed\n");
		return -EINVAL;
	}

	while(i < bytes_written){
		if((buffer[i] == '\0') || (buffer[i] == '\n'))
			break;
		if((buffer[i] < '0') || buffer[i] > '9'){
			printk(KERN_ERR "Invalid char written to statusregs: %c (ASCII: %i)\n", buffer[i], buffer[i]);
			return -EINVAL;
		}

		value *= 10;
		value += (buffer[i] - '0');
		i++;
	}

	write(address, value);

	*offset = 0;

	return bytes_written;
}


// Function to set permission to R/W for all users
static char *status_devnode(struct device *dev, umode_t *mode)
{
        if (!mode)
                return NULL;
        if (dev->devt == MKDEV(MAJOR_NUMBER, 0))
                *mode = 0666;
        return NULL;
}

static int statusregs_probe(struct platform_device *pdev)
{
	struct resource *r_mem; /* IO mem resources */
	struct device *dev_p = &pdev->dev;
	int rc = 0;
	static dev_t myDev;
	static struct class *cl;

	printk(KERN_INFO "StatusRegs: Loading\n");

	/* Get iospace for the device */
	r_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
	if (!r_mem) {
		dev_err(dev_p, "invalid address\n");
		return -ENODEV;
	}
	lp = (struct statusregs_local *) kmalloc(sizeof(struct statusregs_local), GFP_KERNEL);
	if (!lp) {
		dev_err(dev_p, "Cound not allocate statusregs device\n");
		return -ENOMEM;
	}
	dev_set_drvdata(dev_p, lp);
	lp->mem_start = r_mem->start;
	lp->mem_end = r_mem->end;

	if (!request_mem_region(lp->mem_start,
				lp->mem_end - lp->mem_start + 1,
				DRIVER_NAME)) {
		dev_err(dev_p, "Couldn't lock memory region at %p\n",
			(void *)lp->mem_start);
		rc = -EBUSY;
		goto error1;
	}

	lp->base_addr = ioremap(lp->mem_start, lp->mem_end - lp->mem_start + 1);
	if (!lp->base_addr) {
		dev_err(dev_p, "statusregs: Could not allocate iomem\n");
		rc = -EIO;
		goto error2;
	}
	
	myDev = MKDEV(MAJOR_NUMBER, 0);
	cl = class_create(THIS_MODULE, "statusregs");
    cl->devnode = status_devnode;
	device_create(cl, NULL, myDev, NULL, "statusregs");
	
	printk(KERN_INFO "StatusRegs: Loaded\n");

	return 0;
error2:
	release_mem_region(lp->mem_start, lp->mem_end - lp->mem_start + 1);
error1:
	kfree(lp);
	dev_set_drvdata(dev_p, NULL);
	return rc;
}

static int statusregs_remove(struct platform_device *pdev)
{
	struct device *dev_p = &pdev->dev;
	struct statusregs_local *lp = dev_get_drvdata(dev_p);

	
	iounmap(lp->base_addr);
	release_mem_region(lp->mem_start, lp->mem_end - lp->mem_start + 1);
	kfree(lp);
	dev_set_drvdata(dev_p, NULL);
	return 0;
}


static struct of_device_id statusregs_of_match[] = {
	{ .compatible = "m0wut,statusregs", },
	{ /* end of list */ },
};
MODULE_DEVICE_TABLE(of, statusregs_of_match);



static struct platform_driver statusregs_driver = {
	.driver = {
		.name = DRIVER_NAME,
		.owner = THIS_MODULE,
		.of_match_table	= statusregs_of_match,
	},
	.probe		= statusregs_probe,
	.remove		= statusregs_remove,
};

static int __init statusregs_init(void)
{	
	register_chrdev(MAJOR_NUMBER, DRIVER_NAME, &fops);
	return platform_driver_register(&statusregs_driver);
}


static void __exit statusregs_exit(void)
{
	platform_driver_unregister(&statusregs_driver);
	printk(KERN_ALERT "Status regs module unloaded\n");
}

module_init(statusregs_init);
module_exit(statusregs_exit);
