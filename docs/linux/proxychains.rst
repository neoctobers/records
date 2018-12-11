Proxychains
===========

Run a command behind a socks5 proxy.

https://github.com/rofl0r/proxychains-ng


Installation
------------

.. code-block:: console

    $ git clone git@github.com:rofl0r/proxychains-ng.git
    $ cd proxychains-ng
    $ ./configure
    $ make && make install


Configuration
-------------

Make a config file:

.. code-block:: console

    $ make install-config

It will leave a ``proxychains.conf`` under ``/usr/local/etc/``, just edit it:

.. code-block:: text

    socks5 127.0.0.1 1080

That is local ``127.0.0.1:1080`` for example.


Check and usage
---------------

.. code-block:: console

    $ proxychains4 curl https://api.myip.com/


