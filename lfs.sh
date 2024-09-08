#!/bin/bash
# Our Mount Point
export LFS=/mnt/lfs
export LFS_TGT=x86_64-linux-gnu
# Plugin device and get the device name from sudo dmesg
export LFS_DISK=/dev/*

# Check if it is mounted and if it is not then start the setup process.
if ! grep -q "$LFS" /proc/mounts; then
	sorurce setupdisk.sh $LFS_DISK
fi
