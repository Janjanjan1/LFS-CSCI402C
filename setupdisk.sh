
#if var are sourced then we will just inherit it from LSF.sh. 
LSF_DISK="$1"

# within the EOFs all your commands go in and it will input it sequentially
sudo fdisk "$LSF_DISK" << EOF
o
a
n
p
1

+100M
n
p
a
2



p
w
q
EOF
