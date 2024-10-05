
#if var are sourced then we will just inherit it from LSF.sh.
LSF_DISK="$1"

# within the EOFs all your commands go in and it will input it sequentially
# use command g to make GPT partition Table
# make 1G for boot. 40G for Root and rest for home
sudo fdisk "$LSF_DISK" << EOF
g
n
1

+1G


n
2

+40G


n
3




p
w
EOF
