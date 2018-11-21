# FRP reverse proxy

## Project Link

- [fatedier/frp](https://github.com/fatedier/frp)

## Documents

- [EN](https://github.com/fatedier/frp/blob/master/README.md)
- [CN](https://github.com/fatedier/frp/blob/master/README_zh.md)

## Downloads

- [Latest releases](https://github.com/fatedier/frp/releases)

## server-side, ubuntu for example

frps.ini
```
[common]
bind_port = 7000
vhost_https_port = 443
```

write a `/etc/systemd/system/frps.service`:
```
[Unit]
Description=FRP Server
After=network.target

[Service]
ExecStart=/path/to/frps -c /path/to/frps.ini
Restart=on-abort

[Install]
WantedBy=multi-user.target
```

enable the service:
```
systemctl enable frps
```

start / stop / restart / check status
```
systemctl frps start
systemctl frps stop
systemctl frps restart
systemctl frps status
```

or run it in console:
```
./frps -c ./frps.ini
```

## client-side, win10 for example

frpc.ini
```
[common]
server_addr = your-ip-address
server_port = 7000

[your.domain.com:port]
type = https
local_port = 443
custom_domains = your.domain.com
```

run 
```
./frpc -c ./frpc.ini
```

## Enjoy it!

Many thanks to: [https://github.com/fatedier](https://github.com/fatedier)
