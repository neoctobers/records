Set timezone on Ubuntu
======================

Run and select ``Asia``, ``China``, ``Beijing time``:

.. code-block:: console

    $ tzselect


Copy the zoneinfo file to ``/etc``:

.. code-block:: console

    $ cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

