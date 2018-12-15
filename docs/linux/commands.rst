Linux Commands (for remark)
===========================

some commands here...



Update & upgrade
----------------

.. code-block:: console

    $ sudo apt update
    $ sudo apt upgrade

    or
    $ sudo apt update && sudo apt upgrade



List listening ports
--------------------

.. code-block:: console

    $ netstat -ntlp | grep LISTEN



.tar.gz
-------

.. code-block:: console

    $ tar -zcvf filename.tar.gz source



unzip
-----

.. code-block:: console

    $ tar xzf filename.tar.gz



Check tcp_bbr
-------------

.. code-block:: console

    $ lsmod | grep bbr



