Add $PATH in Linux
==================

Add $PATH in Linux



In terminal
-----------

.. code-block:: console

   $ export PATH=/path/to/directory:$PATH



Write in system
---------------

Write a ``/etc/profile.d/add_path.sh`` file:

.. code-block:: text

   export PATH=/path/to/directory:$PATH


Then:

.. code-block:: console

   $ sudo chmod +x /etc/profile.d/add_path.sh
   $ sudo reboot



Check
-----

.. code-block:: console

   $ echo $PATH


