Install Python3.7.2
===================

Install Phthon3.7.2 and make symlink to ``/usr/bin/``.



Install dependence
------------------

.. code-block:: console

   $ sudo apt update
   $ sudo apt install build-essential python-dev python-setuptools python-pip python-smbus build-essential libncursesw5-dev libgdbm-dev libc6-dev zlib1g-dev libsqlite3-dev tk-dev libssl-dev openssl libffi-dev



Download and install Python-3.7.2
---------------------------------

.. code-block:: console

   $ wget https://www.python.org/ftp/python/3.7.2/Python-3.7.2.tgz
   $ tar zxvf Python-3.7.2.tgz && cd Python-3.7.2
   $ sudo ./configure --prefix=/usr/local/opt/python-3.7.2 --with-ssl
   $ sudo make && sudo make install

.. NOTE::

   In the 3rd command, param ``--with--ssl`` is important, don't miss it!



Backup python3.5 and pip3 symlink
---------------------------------

.. code-block:: console

   $ sudo cp /usr/bin/python3 /usr/bin/python3.5
   cp: '/usr/bin/python3' and '/usr/bin/python3.5' are the same file

   $ sudo cp /usr/bin/pip3 /usr/bin/pip3.5



Make Symlinks
-------------

.. code-block:: console

   $ sudo ln -s /usr/local/opt/python-3.7.2/bin/python3.7 /usr/bin/python3.7
   $ sudo ln -s /usr/local/opt/python-3.7.2/bin/python3.7 /usr/bin/python3
   $ sudo ln -s /usr/local/opt/python-3.7.2/bin/python3.7 /usr/bin/py

   $ sudo ln -s /usr/local/opt/python-3.7.2/bin/pip3.7 /usr/bin/pip3.7
   $ sudo ln -s /usr/local/opt/python-3.7.2/bin/pip3.7 /usr/bin/pip3

   $ sudo ln -s /usr/local/opt/python-3.7.2/bin/pydoc3.7 /usr/bin/pydoc3.7
   $ sudo ln -s /usr/local/opt/python-3.7.2/bin/python3.7m /usr/bin/python3.7m
   $ sudo ln -s /usr/local/opt/python-3.7.2/bin/pyvenv-3.7 /usr/bin/pyvenv-3.7



Rename lsb_release if there is a error
--------------------------------------

Try:

.. code-block:: console

   $ $ pip3 list
   Package    Version
   ---------- -------
   pip        10.0.1
   setuptools 39.0.1
   Traceback (most recent call last):
     File "/usr/bin/pip3", line 11, in <module>
       sys.exit(main())
     File "/usr/local/opt/python-3.7.2/lib/python3.7/site-packages/pip/_internal/__init__.py", line 246, in main
       return command.main(cmd_args)
     File "/usr/local/opt/python-3.7.2/lib/python3.7/site-packages/pip/_internal/basecommand.py", line 264, in main
       timeout=min(5, options.timeout)) as session:
     File "/usr/local/opt/python-3.7.2/lib/python3.7/site-packages/pip/_internal/basecommand.py", line 81, in _build_session
       insecure_hosts=options.trusted_hosts,
     File "/usr/local/opt/python-3.7.2/lib/python3.7/site-packages/pip/_internal/download.py", line 338, in __init__
       self.headers["User-Agent"] = user_agent()
     File "/usr/local/opt/python-3.7.2/lib/python3.7/site-packages/pip/_internal/download.py", line 101, in user_agent
       zip(["name", "version", "id"], distro.linux_distribution()),
     File "/usr/local/opt/python-3.7.2/lib/python3.7/site-packages/pip/_vendor/distro.py", line 120, in linux_distribution
       return _distro.linux_distribution(full_distribution_name)
     File "/usr/local/opt/python-3.7.2/lib/python3.7/site-packages/pip/_vendor/distro.py", line 634, in linux_distribution
       self.version(),
     File "/usr/local/opt/python-3.7.2/lib/python3.7/site-packages/pip/_vendor/distro.py", line 688, in version
       self.lsb_release_attr('release'),
     File "/usr/local/opt/python-3.7.2/lib/python3.7/site-packages/pip/_vendor/distro.py", line 836, in lsb_release_attr
       return self._lsb_release_info.get(attribute, '')
     File "/usr/local/opt/python-3.7.2/lib/python3.7/site-packages/pip/_vendor/distro.py", line 522, in __get__
        ret = obj.__dict__[self._fname] = self._f(obj)
     File "/usr/local/opt/python-3.7.2/lib/python3.7/site-packages/pip/_vendor/distro.py", line 933, in _lsb_release_info
       stdout = subprocess.check_output(cmd, stderr=devnull)
     File "/usr/local/opt/python-3.7.2/lib/python3.7/subprocess.py", line 389, in check_output
       **kwargs).stdout
     File "/usr/local/opt/python-3.7.2/lib/python3.7/subprocess.py", line 481, in run
       output=stdout, stderr=stderr)
   subprocess.CalledProcessError: Command '('lsb_release', '-a')' returned non-zero exit status 1.

Rename it safely:

.. code-block:: console

   $ sudo mv /usr/bin/lsb_release /usr/bin/lsb_release_back

Then, try again:

.. code-block:: console

   $ pip3 list
   Package    Version
   ---------- -------
   pip        10.0.1
   setuptools 39.0.1
   You are using pip version 10.0.1, however version 18.1 is available.
   You should consider upgrading via the 'pip install --upgrade pip' command.



Upgrade pip3
------------

Do it:

.. code-block:: console

   $ pip3 install -U pip
   Looking in indexes: https://pypi.org/simple, https://www.piwheels.org/simple
   Collecting pip
     Downloading https://files.pythonhosted.org/packages/c2/d7/90f34cb0d83a6c5631cf71dfe64cc1054598c843a92b400e55675cc2ac37/pip-18.1-py2.py3-none-any.whl (1.3MB)
       100% |████████████████████████████████| 1.3MB 43kB/s
   Installing collected packages: pip
     Found existing installation: pip 10.0.1
       Uninstalling pip-10.0.1:
         Successfully uninstalled pip-10.0.1
   Successfully installed pip-18.1


Check it:

.. code-block:: console

   $ pip3 list
   Package    Version
   ---------- -------
   pip        18.1
   setuptools 39.0.1

   $


May update setuptools:

.. code-block:: console

   $ sudo pip3 install -U setuptools
   Looking in indexes: https://pypi.org/simple, https://www.piwheels.org/simple
   Collecting setuptools
     Downloading https://files.pythonhosted.org/packages/37/06/754589caf971b0d2d48f151c2586f62902d93dc908e2fd9b9b9f6aa3c9dd/setuptools-40.6.3-py2.py3-none-any.whl (573kB)
       100% |████████████████████████████████| 573kB 20kB/s
   Installing collected packages: setuptools
     Found existing installation: setuptools 39.0.1
       Uninstalling setuptools-39.0.1:
         Successfully uninstalled setuptools-39.0.1
   Successfully installed setuptools-40.6.3


Python3 is ready now, well done!

