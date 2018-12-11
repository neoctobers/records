ShadowsocksR on Linux, Raspberry Pi3B+ for example
==================================================

Under the user ``pi``


Install
-------

.. code-block:: console

    $ cd /path/to/shadowsocksr-parents-dir/
    $ git clone git@github.com:shadowsocksrr/shadowsocksr.git


Config
------

Make a config file in ``/path/to/config.json``

Default:

.. code-block:: text

    {
        "server": "0.0.0.0",
        "server_ipv6": "::",
        "server_port": 8388,
        "local_address": "127.0.0.1",
        "local_port": 1080,

        "password": "m",
        "method": "aes-128-ctr",
        "protocol": "auth_aes128_md5",
        "protocol_param": "",
        "obfs": "tls1.2_ticket_auth_compatible",
        "obfs_param": "",
        "speed_limit_per_con": 0,
        "speed_limit_per_user": 0,

        "additional_ports" : {}, // only works under multi-user mode
        "additional_ports_only" : false, // only works under multi-user mode
        "timeout": 120,
        "udp_timeout": 60,
        "dns_ipv6": false,
        "connect_verbose_info": 0,
        "redirect": "",
        "fast_open": false
    }

Main lines:

.. code-block:: text

    {
        "server": "0.0.0.0",        // Server IP address or domain
        "server_ipv6": "::",        // Server IPv6 address, or leave it as ::
        "server_port": 8388,        // Server port
        "local_address": "0.0.0.0", // 0.0.0.0 will work for the whole lan
        "local_port": 1080,         // Local port
        "password": "password",     // Server password
        "method": "chacha20-ietf",  // Method
        "protocol": "auth_chain_a", // Protocol
        "protocol_param": "",       // Protocol params
        "obfs": "http_simple",      // Obfs
        "obfs_param": "",           // Obfs Params
    }


Try to run
----------

.. code-block:: console

    $ python /path/to/shadowsocksr/shadowsocks/local.py -c /path/to/config.json


Make it as a service
--------------------

Write a ``/etc/systemd/system/ssr.service``:

.. code-block:: text

    [Unit]
    Description=ShadowsocksR
    After=network.target

    [Service]
    ExecStart=/usr/bin/python /path/to/shadowsocksr/shadowsocks/local.py -c /path/to/config.json
    Restart=on-abort

    [Install]
    WantedBy=multi-user.target

Enable the service:

.. code-block:: console

    $ systemctl enable ssr

Start / stop / restart / check status:

.. code-block:: console

    $ service frps ssr
    $ service frps ssr
    $ service frps ssr
    $ service frps ssr
