# Mount a disk, in ubuntu

list and format:
```
sudo su
fdisk -l
fdisk /dev/sdb
n
w
mkfs -t ext4 /dev/sdb1
```

add this line in to `/etc/fstab`:
```
/dev/sdb1    /mnt/???    ext4    defaults    1    1
```

reboot:
```
reboot
```

more:
[Ubuntu缩小磁盘分区大小](https://blog.csdn.net/u012291393/article/details/78636456?utm_source=blogxgwz2)

