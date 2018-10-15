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
/dev/sdb1    /mnt/parity    ext4    defaults    1    1
```

reboot:
```
reboot
```
