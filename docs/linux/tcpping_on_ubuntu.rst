TCP Ping on Ubuntu
==================

A TCP Ping tool.



Download
--------

.. code-block:: console

    $ sudo apt install tcptraceroute
    $ sudo wget http://www.vdberg.org/~richard/tcpping -O /usr/bin/tcping
    $ sudo chmod 755 /usr/bin/tcping



Usage
-----

.. code-block:: console

    $ tcping 127.0.0.1 22
    seq 0: tcp response from localhost (127.0.0.1) [open]  0.031 ms
    seq 1: tcp response from localhost (127.0.0.1) [open]  0.095 ms
    seq 2: tcp response from localhost (127.0.0.1) [open]  0.032 ms
    seq 3: tcp response from localhost (127.0.0.1) [open]  0.034 ms
    seq 4: tcp response from localhost (127.0.0.1) [open]  0.111 ms
    seq 5: tcp response from localhost (127.0.0.1) [open]  0.035 ms
    ^C

