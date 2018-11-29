# Run my script in ubuntu, as a service

Write a `/etc/systemd/system/my.service`:
```
[Unit]
Description=My Service
After=network.target

[Service]
ExecStart=/path/to/file
Restart=on-abort

[Install]
WantedBy=multi-user.target
```

Enable the service:
```
systemctl enable my
```

Start / stop / restart / check status:
```
service frps my
service frps my
service frps my
service frps my
```
