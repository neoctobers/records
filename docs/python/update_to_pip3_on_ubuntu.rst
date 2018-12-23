Update pip3 to 18.x on Ubuntu 18.04 LTS
=======================================

Check for python3 version:

.. code-block:: console

   # python3
   Python 3.6.7 (default, Oct 22 2018, 11:32:17)
   [GCC 8.2.0] on linux
   Type "help", "copyright", "credits" or "license" for more information.
   >>>


Install ``pip3``:

.. code-block:: console

   # wget https://bootstrap.pypa.io/get-pip.py
   # python3 get-pip.py


Check ``pip3``:

.. code-block:: console

   # pip3
   -bash: /usr/bin/pip3: No such file or directory


but:

.. code-block:: console

   # pip -V
   pip 18.1 from /usr/local/lib/python3.6/dist-packages/pip (python 3.6)


``pip`` === ``pip3`` ??!   Make a symblink for it:

.. code-block:: console

   # ln -s /usr/local/bin/pip /usr/bin/pip3
   # pip3 -V
   pip 18.1 from /usr/local/lib/python3.6/dist-packages/pip (python 3.6)

