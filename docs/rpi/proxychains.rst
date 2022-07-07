Proxychains-NG: Run commands behind a Socks5 proxy
==================================================

Run a command behind a Socks5 proxy.

:ref: https://github.com/rofl0r/proxychains-ng



Installation
------------

.. code-block:: console

    $ git clone git@github.com:rofl0r/proxychains-ng.git
    $ cd proxychains-ng
    $ sudo ./configure
    $ sudo make && sudo make install


The full path to command is: ``/usr/local/bin/proxychains4``



Configuration
-------------

Write config file ``/etc/proxychains.conf`` as default:

.. code-block:: text

    strict_chain
    proxy_dns
    remote_dns_subnet 224
    tcp_read_time_out 15000
    tcp_connect_time_out 8000

    [ProxyList]
    socks5 127.0.0.1 1080


PS: Port 1080 is listened by a Shadowsocks or shadowsocksR.


.. NOTE::

    Original ``proxychains.conf`` file: `proxychains.conf on Github.com`_ or `in RAW format`_

    .. _proxychains.conf on Github.com: https://github.com/rofl0r/proxychains-ng/blob/master/src/proxychains.conf
    .. _in RAW format: https://raw.githubusercontent.com/rofl0r/proxychains-ng/master/src/proxychains.conf



Check and usage
---------------

.. code-block:: console

    $ porxychains4 curl https://api.myip.com/

