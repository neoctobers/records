# FRP reverse proxy

## Project Link

- [fatedier/frp](https://github.com/fatedier/frp)

Many thanks to: [https://github.com/fatedier](https://github.com/fatedier)

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

run
```
./frps -c ./frps.ini
```

## client-side, win10 for example

frpc.ini
```
[common]
server_addr = your-ip-address
server_port = 7000

[telegram-bot-webhook]
type = https
local_port = 443
custom_domains = your.domain.com
```

run
```
./frpc -c ./frpc.ini
```

## Enjoy it!

