Crontab -e
==========

Create a cron task

:ref: https://linuxtools-rst.readthedocs.io/zh_CN/latest/tool/crontab.html



Edit crontab
------------

.. code-block:: console

   $ crontab -e


Line:

.. code-block:: text

   0,30 * * * *    /path/to/command



Restart cron service
--------------------

.. code-block:: console

   $ sudo service cron reload
   [ ok ] Reloading configuration files for periodic command scheduler: cron.

   $ sudo service cron restart

