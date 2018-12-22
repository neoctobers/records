Add to $PATH
============

Add ``/path/to/directory`` to $PATH



For terminal
------------

.. code-block:: console

   $ export PATH=/path/to/directory:$PATH



For system
----------

Write a ``/etc/profile.d/add_to_path.sh`` file:

.. code-block:: text

   export PATH=/path/to/directory:$PATH


Then:

.. code-block:: console

   $ sudo chmod +x /etc/profile.d/add_to_path.sh


Reboot.



For sudo
--------

.. code-block:: console

   $ sudo visudo


Add in ``secure_path="..."``, and reboot.



Check
-----

.. code-block:: console

   $ echo $PATH


