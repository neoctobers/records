Convert socks to http proxy thr privoxy
=======================================

Privoxy



Installation
------------

.. code-block:: console

   $ sudo apt install -y privoxy



Configuration
-------------

:ref: https://www.privoxy.org/faq/configuration.html


Modify or append lines of ``/etc/privoxy/config``:

.. code-block:: text

   # listen on 9051
   listen-address  :9051

   # permit access from LOCAL
   permit-access 127.0.0.0/8

   # permit access from LAN
   permit-access 10.168.0.0/16
   permit-access 172.16.0.0/12
   permit-access 192.168.0.0/16

   # forward to TOR
   forward-socks5    /    127.0.0.1:9050  .


so, the whole config text would be:

.. code-block:: text

   confdir /etc/privoxy
   logdir /var/log/privoxy
   actionsfile match-all.action # Actions that are applied to all sites and maybe overruled later on.
   actionsfile default.action   # Main actions file
   actionsfile user.action      # User customizations
   filterfile default.filter
   filterfile user.filter      # User customizations
   logfile logfile

   # listen on 9051
   listen-address  :9051
   # listen-address  [::1]:8118

   toggle  1
   enable-remote-toggle  0
   enable-remote-http-toggle  0
   enable-edit-actions 0
   enforce-blocks 0

   # permit access from LOCAL
   permit-access 127.0.0.0/8

   # permit access from LAN
   permit-access 10.168.0.0/16
   permit-access 172.16.0.0/12
   permit-access 192.168.0.0/16

   buffer-limit 4096
   enable-proxy-authentication-forwarding 0
   forwarded-connect-retries  0
   accept-intercepted-requests 0
   allow-cgi-request-crunching 0
   split-large-forms 0
   keep-alive-timeout 5
   tolerate-pipelining 1
   socket-timeout 300
   max-client-connections 128

   # forward to TOR
   forward-socks5    /    127.0.0.1:9050  .

.. NOTE::

   Make sure: don't miss the ``.`` at the end.



Restart privoxy service
-----------------------

.. code-block:: console

   $ sudo service privoxy restart



Enjoy.

