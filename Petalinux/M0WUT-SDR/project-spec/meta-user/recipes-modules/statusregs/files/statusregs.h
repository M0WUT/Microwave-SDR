#ifndef statusregs_H
#define statusregs_H

#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/slab.h>
#include <linux/io.h>
#include <linux/interrupt.h>
#include <linux/of_address.h>
#include <linux/of_device.h>
#include <linux/of_platform.h>
#include <linux/fs.h>
#include <asm/uaccess.h>
#include <linux/math64.h>
#include <linux/device.h>
#include <linux/kdev_t.h>
#include <linux/ioctl.h>

#define MAJOR_NUMBER 202

#define OFFSET_ID 0x00
#define OFFSET_DISPFREQ 0x01
#define OFFSET_DISPMODE 0x02
#define OFFSET_RXMODE 0x03
#define OFFSET_PHACC1 0x04
#define OFFSET_FFTACC 0x05

#define OFFSET_LIMIT OFFSET_FFTACC

//#define DEBUG

// Ioctl for changing the address in memory
#define IOCTL_SET_ADDRESS _IO(MAJOR_NUMBER, 0)


static struct statusregs_local {
	unsigned int mem_start;
	unsigned int mem_end;
	void __iomem *base_addr;
};

static int status_open(struct inode *inode_p, struct file *file_p);
static int status_release(struct inode *inode_p, struct file *file_p);
static ssize_t status_read(struct file *file_p, char *outBuffer_p, size_t length, loff_t *offset);
static ssize_t status_write(struct file *file_p, const char *inBuffer_p, size_t length, loff_t *offset);
long status_ioctl(struct file *file_p, unsigned int ioctl_num, unsigned long ioctl_param);

#endif //  ifdef statusregs_H