Proxychains-NG
==============

Run a command behind a socks5 proxy.

https://github.com/rofl0r/proxychains-ng



Installation
------------

.. code-block:: console

    $ git clone git@github.com:rofl0r/proxychains-ng.git
    $ cd proxychains-ng
    $ ./configure
    $ make && make install


Make the command name shorter as ``pc4``:

.. code-block:: console

    $ sudo ln -s /usr/local/bin/porxychains4 /usr/local/bin/pc4



Configuration
-------------

Write config file ``/etc/proxychains.conf``:

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

    $ pc4 curl https://api.myip.com/



