Run Tor on RPi
==============

Tor on RPi3B+

:ref: https://www.freebuf.com/geek/121780.html
:ref: http://shumeipai.nxez.com/2014/02/28/based-on-anonymous-proxy-raspberry-pi-and-tordajian.html



Install tor
-----------

.. code-block:: console

   $ sudo apt install tor



Stop tor service and make a configuration file
----------------------------------------------

.. code-block:: console

   $ sudo service tor stop


Make tor work for lan, modify configuration file ``/etc/tor/torrc``:

.. code-block:: text

   # VIA SS(R)
   SOCKS5Proxy 127.0.0.1:1008

   # SOCKS
   SOCKSPort 9050
   SocksListenAddress 0.0.0.0:9050
   SocksPolicy accept 10.168.0.0/16
   SocksPolicy accept 172.16.0.0/12
   SocksPolicy accept 192.168.0.0/16
   SocksPolicy reject *

   # WOULD NOT BE A EXIT
   ExitPolicy reject *:*

   # LOG
   Log notice file /var/log/tor/notices.log



Restart tor service
-------------------

.. code-block:: console

   $ sudo service tor restart



Cat log
-------

.. code-block:: console

   $ cat /var/log/tor/notices.log
   Dec 21 23:19:40.000 [notice] Tor 0.2.9.16 (git-9ef571339967c1e5) opening log file.
   Dec 21 23:19:39.939 [warn] OpenSSL version from headers does not match the version we're running with. If you get weird crashes, that might be why. (Compiled with 1010006f: OpenSSL 1.1.0f  25 May 2017; running with 101000af: OpenSSL 1.1.0j  20 Nov 2018).
   Dec 21 23:19:40.367 [notice] Tor 0.2.9.16 (git-9ef571339967c1e5) running on Linux with Libevent 2.0.21-stable, OpenSSL 1.1.0j and Zlib 1.2.8.
   Dec 21 23:19:40.367 [notice] Tor can't help you if you use it wrong! Learn how to be safe at https://www.torproject.org/download/download#warning
   Dec 21 23:19:40.368 [notice] Read configuration file "/usr/share/tor/tor-service-defaults-torrc".
   Dec 21 23:19:40.368 [notice] Read configuration file "/etc/tor/torrc".
   Dec 21 23:19:40.378 [warn] The SocksListenAddress option is deprecated, and will most likely be removed in a future version of Tor. Use SocksPort instead. (If you think this is a mistake, please let us know!)
   Dec 21 23:19:40.379 [warn] You specified a public address '0.0.0.0:9050' for SocksPort. Other people on the Internet might find your computer and use it as an open proxy. Please don't allow this unless you have a good reason.
   Dec 21 23:19:40.381 [warn] You specified a public address '0.0.0.0:9050' for SocksPort. Other people on the Internet might find your computer and use it as an open proxy. Please don't allow this unless you have a good reason.
   Dec 21 23:19:40.381 [notice] Opening Socks listener on 0.0.0.0:9050
   Dec 21 23:19:40.000 [notice] Parsing GEOIP IPv4 file /usr/share/tor/geoip.
   Dec 21 23:19:41.000 [notice] Parsing GEOIP IPv6 file /usr/share/tor/geoip6.
   Dec 21 23:19:42.000 [notice] Bootstrapped 0%: Starting
   Dec 21 23:19:43.000 [notice] Bootstrapped 80%: Connecting to the Tor network
   Dec 21 23:19:43.000 [notice] Signaled readiness to systemd
   Dec 21 23:19:43.000 [notice] Opening Control listener on /var/run/tor/control
   Dec 21 23:19:44.000 [notice] Bootstrapped 85%: Finishing handshake with first hop
   Dec 21 23:19:45.000 [notice] Bootstrapped 90%: Establishing a Tor circuit
   Dec 21 23:19:47.000 [notice] Tor has successfully opened a circuit. Looks like client functionality is working.
   Dec 21 23:19:47.000 [notice] Bootstrapped 100%: Done

That's right.



Use tor via socks5
------------------

Use tor via socks5...


