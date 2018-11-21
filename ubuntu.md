# ubuntu

## timezone

run and select `Asia`, `China`, `Beijing time`:
```
tzselect
```

copy to `/etc/`:
```
cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
```

list listening ports:
```
netstat -ntlp | grep LISTEN
```

tar to `.tar.gz`:
```
tar -zcvf filename.tar.gz source
```

unzip:
```
tar xzf filename.tar.gz
```

check tcp_bbr:
```
lsmod | grep bbr
```
