Python3.7.1 on Raspberry 3B+
============================

Make sure you are under root.

Install dependence
------------------

.. code-block:: console

    $ apt update
    $ apt install build-essential python-dev python-setuptools python-pip python-smbus build-essential libncursesw5-dev libgdbm-dev libc6-dev zlib1g-dev libsqlite3-dev tk-dev libssl-dev openssl libffi-dev


Download and install Python-3.7.1
---------------------------------

.. code-block:: console

    $ wget https://www.python.org/ftp/python/3.7.1/Python-3.7.1.tgz
    $ tar zxvf Python-3.7.1.tgz
    $ cd Python-3.7.1
    $ ./configure --prefix=/usr/local/opt/python-3.7.1 --with-ssl
    $ make
    $ make install

.. NOTE::

    ``--with--ssl`` is important!


Symlink
-------

.. code-block:: console

    ln -s /usr/local/opt/python-3.7.1/bin/pydoc3.7 /usr/bin/pydoc3.7
    ln -s /usr/local/opt/python-3.7.1/bin/python3.7 /usr/bin/python3.7
    ln -s /usr/local/opt/python-3.7.1/bin/python3.7m /usr/bin/python3.7m
    ln -s /usr/local/opt/python-3.7.1/bin/pyvenv-3.7 /usr/bin/pyvenv-3.7
    ln -s /usr/local/opt/python-3.7.1/bin/pip3.7 /usr/bin/pip3.7


Set as default python?
----------------------

.. code-block:: console

    $ rm /usr/bin/pydoc
    $ ln -s /usr/local/opt/python-3.7.1/bin/pydoc3.7 /usr/bin/pydoc

    $ rm /usr/bin/python
    $ ln -s /usr/local/opt/python-3.7.1/bin/python3.7 /usr/bin/python

    $ rm /usr/bin/pyvenv
    $ ln -s /usr/local/opt/python-3.7.1/bin/pyvenv-3.7 /usr/bin/pyvenv

    $ rm /usr/bin/pip
    $ ln -s /usr/local/opt/python-3.7.1/bin/pip3.7 /usr/bin/pip

