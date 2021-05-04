#!/bin/bash

set -e

echo "Making some bits"
petalinux-config --get-hw-description
petalinux-build
petalinux-package --boot --fsbl ~/Trenz_Provided_Files/test_board/vivado/test_board.sdk/fsbl/Debug/fsbl.elf --fpga images/linux/system.bit --u-boot --force

echo "Copying bootloader"
cp images/linux/image.ub /media/dan/BOOT
cp images/linux/image.ub /var/lib/tftpboot

rm -f /home/dan/.ssh/known_hosts

