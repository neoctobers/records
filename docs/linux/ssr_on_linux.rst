ShadowsocksR Client on Linux
============================

ShadowsocksR by Python


Install
-------

.. code-block:: console

    $ git clone git@github.com:shadowsocksrr/shadowsocksr.git



Config
------

Make a config file in ``/path/to/config.json``

.. code-block:: text

    {
        "server": "123.123.123.123",
        "server_port": 8388,
        "method": "chacha20-ietf",
        "password": "password",
        "protocol": "auth_chain_a",
        "protocol_param": "",
        "obfs": "http_simple",
        "obfs_param": "",

        "local_address": "127.0.0.1",
        "local_port": 1080
    }

They are:

- Server IP address or domain
- Server port
- Method
- Password
- Protocol
- Protocol params
- Obfs
- Obfs Params
- Listen IP
- Listen Port



Try to run
----------

.. code-block:: console

    $ python /path/to/shadowsocksr/shadowsocks/local.py -c /path/to/config.json



Keep it running by supervisor
-----------------------------

Write a supervisor ``/etc/supervisor/conf.d/ssr.conf`` file:

.. code-block:: text

    [program:ssr]
    command=/usr/bin/python3 /path/to/shadowsocksr/shadowsocks/local.py -c /path/to/config.json
    autostart=true
    autorestart=true
    startretries=5
    redirect_stderr=true
    # stdout_logfile=/path/to/ssr.log
    stdout_logfile=NONE
