# parity on ubuntu

install on ubuntu:
```
bash <(curl https://get.parity.io -L) -r stable
```

run parity as a system service:
```
wget https://raw.githubusercontent.com/paritytech/parity/master/scripts/parity.service -O /etc/systemd/system/parity.service
```

may edit the file `/etc/systemd/system/parity.service`, then:
```
chmod +x /etc/systemd/system/parity.service
systemctl enable parity
systemctl start parity
```
