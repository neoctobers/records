# sshd_config

## root

Edit `/etc/ssh/sshd_config`:
```
# Port 22
Port custom-port

#PermitEmptyPasswords no
PermitEmptyPasswords no
```

## run
```
service sshd restart
```
