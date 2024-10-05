#!/bin/bash
# Mount Point
export LFS=/mnt/lfs
export LFS_TGT=x86_64-linux-gnu
# Plugin device and get the device name from sudo dmesg
# replace * with the device name
export LFS_DISK=/dev/sdb

# Check if it is mounted and if it is not then start the setup process so that we can appropriately mount the device.
if ! grep -q "$LFS" /proc/mounts; then
	source setupdisk.sh $LFS_DISK
fi
