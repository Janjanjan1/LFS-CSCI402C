#!/bin/bash
# Mount Point
export LFS=/mnt/lfs
export LFS_TGT=x86_64-linux-gnu
# Plugin device and get the device name from sudo dmesg
# replace * with the device name
export LFS_DISK=/dev/sdb

# Check if the partitions are mounted and if it is not, then start the setup process so that we can appropriately mount the device.
if ! grep -q "$LFS" /proc/mounts; then
	source setupdisk.sh "$LFS_DISK"
    mkdir -pv $LFS
    sudo mount "${LFS_DISK}3" "$LFS"
    mkdir -pv $LFS/home
    sudo mount "${LFS_DISK}3" "$LFS/home"
    sudo chown -v $USER "$LFS"
fi


mkdir -v $LFS/sources
chmod -v a+wt $LFS/sources
mkdir -pv $LFS/{etc,var} $LFS/usr/{bin,lib,sbin}

for i in bin lib sbin; do
  ln -sv usr/$i $LFS/$i
done

case $(uname -m) in
  x86_64) mkdir -pv $LFS/lib64 ;;
esac
mkdir -pv $LFS/tools
# Give lfs user access to all the directories
#chown -v lfs $LFS/{usr{,/*},lib,var,etc,bin,sbin,tools}
#case $(uname -m) in
#  x86_64) chown -v lfs $LFS/lib64 ;;
#esac
#su -lfs
