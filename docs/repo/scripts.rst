Github: scripts - Some useful scripts
=====================================

https://github.com/neoctobers/scripts



Clone
-----

.. code-block:: console

   $ git clone git@github.com:neoctobers/scripts.git



Windows
-------

Add the absolute path to ``PATH``. Then you can easily use these commands everywhere.



Linux
-----

``+x``:

.. code-block:: console

   $ sudo chmod +x /path/to/scripts/linux/*


Create ``/etc/profile.d/add_to_path.sh``:

.. code-block:: console

   $ sudo nano /etc/profile.d/add_to_path.sh


Edit with one line:

.. code-block:: text

   export PATH=/path/to/scripts/linux:$PATH


Permit:

.. code-block:: console

   $ sudo chmod +x /etc/profile.d/add_to_path.sh


Add to sudo:

.. code-block:: console

   $ sudo visudo


Add ``/path/to/scripts/linux`` in ``secure_path="..."``.



Reboot


