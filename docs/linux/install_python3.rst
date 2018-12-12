Install Python3.7.1
===================

Install Phthon3.7.1 and make symlink to ``/usr/bin/``.



Install dependence
------------------

.. code-block:: console

    $ sudo apt update
    $ sudo apt install build-essential python-dev python-setuptools python-pip python-smbus build-essential libncursesw5-dev libgdbm-dev libc6-dev zlib1g-dev libsqlite3-dev tk-dev libssl-dev openssl libffi-dev



Download and install Python-3.7.1
---------------------------------

.. code-block:: console

    $ wget https://www.python.org/ftp/python/3.7.1/Python-3.7.1.tgz
    $ tar zxvf Python-3.7.1.tgz && cd Python-3.7.1
    $ sudo ./configure --prefix=/usr/local/opt/python-3.7.1 --with-ssl
    $ sudo make && sudo make install

.. NOTE::

    In the 3rd command, param ``--with--ssl`` is important, don't miss it!



Symlink
-------

.. code-block:: console

    $ sudo ln -s /usr/local/opt/python-3.7.1/bin/python3.7 /usr/bin/python3.7
    $ sudo ln -s /usr/local/opt/python-3.7.1/bin/pip3.7 /usr/bin/pip3.7

    $ sudo ln -s /usr/local/opt/python-3.7.1/bin/pydoc3.7 /usr/bin/pydoc3.7
    $ sudo ln -s /usr/local/opt/python-3.7.1/bin/python3.7m /usr/bin/python3.7m
    $ sudo ln -s /usr/local/opt/python-3.7.1/bin/pyvenv-3.7 /usr/bin/pyvenv-3.7



Make a ``py`` for short command
-------------------------------

.. code-block:: console

    $ sudo ln -s /usr/local/opt/python-3.7.1/bin/python3.7 /usr/bin/py



Upgrade pip
-----------

.. code-block:: console

    $ pip3 install -U pip


