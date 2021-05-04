module="m0wut-sdr"

petalinux-build -c $module -x do_install
cp build/tmp/work/cortexa9t2hf-neon-xilinx-linux-gnueabi/$module/1.0-r0/image/usr/bin/$module /var/lib/tftpboot
