#!/bin/bash

set -e
echo "Wiping SD Card"
sudo rm -rf /media/dan/BOOT/*
sudo rm -rf /media/dan/ROOT/*

echo "Making some bits"
petalinux-config --get-hw-description
petalinux-build
petalinux-package --boot --fsbl ../FSBL/fsbl_2019.elf --fpga images/linux/system.bit --u-boot --force

echo "Copying bootloader"
cp images/linux/BOOT.BIN /media/dan/BOOT
cp images/linux/image.ub /media/dan/BOOT


echo "Copying ROOTFS"
#cp -p included_files/setup.sh /media/dan/ROOT/home/root/setup.sh
#cp -p included_files/ethertest.sh /media/dan/ROOT/home/root/ethertest.sh
cd /media/dan/ROOT
sudo cpio --quiet -idv < /var/lib/tftpboot/rootfs.cpio
cd

#rm -f /home/dan/.ssh/known_hosts
sync

sudo umount /dev/sdb1
sudo umount /dev/sdb2
sudo fsck /dev/sdb2 -y

sudo eject /dev/sdb
