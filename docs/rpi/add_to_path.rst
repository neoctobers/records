Add to $PATH
============

Add ``/path/to/directory`` to $PATH



In terminal
-----------

.. code-block:: console

   $ export PATH=/path/to/directory:$PATH



Write in system
---------------

Write a ``/etc/profile.d/add_to_path.sh`` file:

.. code-block:: text

   export PATH=/path/to/directory:$PATH


Then:

.. code-block:: console

   $ sudo chmod +x /etc/profile.d/add_to_path.sh
   $ sudo reboot



Check
-----

.. code-block:: console

   $ echo $PATH


