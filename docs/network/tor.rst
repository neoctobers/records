TOR
===

Just TOR



Download
--------

https://www.torproject.org/download/download



Expert Bundle on windows
------------------------

Edit a file ``torrc`` in directory ``%AppData%/tor``:

.. code-block:: text

   # VIA SS(R)
   SOCKS5Proxy 127.0.0.1:1080

   # LOCAL PORT
   SOCKSPort 9050


Then, run ``tor.exe`` and enjoy, with ``socks5://127.0.0.1:9050``

Full and a raw ``torrc``, visit `github <https://github.com/torproject/tor/blob/master/src/config/torrc.sample.in>`_
