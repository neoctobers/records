FRP reverse proxy
=================

`Project Link`_

`Documents CN`_

`Documents EN`_

`Downloads`_

.. _Project Link: https://github.com/fatedier/frp
.. _Documents CN: https://github.com/fatedier/frp/blob/master/README.md
.. _Documents EN: https://github.com/fatedier/frp/blob/master/README_zh.md
.. _Downloads: https://github.com/fatedier/frp/releases


Server-side, ubuntu for example
-------------------------------

Edit the ``frps.ini``::

    [common]
    bind_port = 7000
    vhost_https_port = 443


Write a ``/etc/systemd/system/frps.service``::
    [Unit]
    Description=FRP Server
    After=network.target

    [Service]
    ExecStart=/path/to/frps -c /path/to/frps.ini
    Restart=on-abort

    [Install]
    WantedBy=multi-user.target

Enable the service:

.. code-block:: console

    $ systemctl enable frps


start / stop / restart / check status:

.. code-block:: console

    $ service frps start
    $ service frps stop
    $ service frps restart
    $ service frps status


or run it in console:

.. code-block:: console

    $ ./frps -c ./frps.ini


Client-side, win10 for example
------------------------------

Edit the ``frpc.ini``::

    [common]
    server_addr = your-ip-address
    server_port = 7000

    [your.domain.com:port]
    type = https
    local_port = 443
    custom_domains = your.domain.com

Run:

.. code-block:: console

    $ ./frpc -c ./frpc.ini


Enjoy it!

