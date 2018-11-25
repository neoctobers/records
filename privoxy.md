# privoxy

Convert socks5 to http proxy.

## Download

[http://www.privoxy.org/sf-download-mirror/Win32/](http://www.privoxy.org/sf-download-mirror/Win32/)

## Edit `config.txt`

Add to the end, keep the dot `.` at the end of this line:
```
forward-socks5 / 127.0.0.1:1080 .
```

Change the listening port:
```
listen-address  127.0.0.1:1081
```

Run
