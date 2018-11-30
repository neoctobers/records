# supervisor

Run on ubuntu 18.04 LTS

## Installation
```
apt install supervisor
```

## Create `.conf` file:

Write `/etc/supervisor/conf.d/your-program-name.conf`:
```
[program:your-program-name]
directory=/path/to/directory/
command=your-command
autostart=true
autorestart=true
startretries=5
redirect_stderr=true
stdout_logfile=/path/to/filename.log
```

## Manage

```
supervisorctl reload
supervisorctl update
supervisorctl stop all
supervisorctl stop your-program-name
supervisorctl start your-program-name
supervisorctl restart your-program-name
```
