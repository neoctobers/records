Multiple ssh-key for git
========================

Multiple users for different repositories.


Generate multiple ssh-keys for different users
----------------------------------------------

Different passwords is recommended.

.. code-block:: console

    $ ssh-keygen -t rsa -C "name1@sample.domain"
    $ ssh-keygen -t rsa -C "name2@sample.domain"
    $ ssh-keygen -t rsa -C "name3@sample.domain"

Put them to ``~/.ssh/`` directory.

Edit or create ``~/.ssh/config`` file::

    # name1
    Host name1
        HostName github.com
        IdentityFile C:\\Users\\user\\.ssh\\id_rsa_name1
        PreferredAuthentications publickey
        User name1

    # name2
    Host name2
        HostName github.com
        IdentityFile C:\\Users\\user\\.ssh\\id_rsa_name2
        PreferredAuthentications publickey
        User user2

    # name3
    Host name3
        HostName git.oschina.net
        IdentityFile C:\\Users\\user\\.ssh\\id_rsa_name3
        PreferredAuthentications publickey
        User user3

    # ...

Usage
-----

clone for example:

.. code-block:: console

    $ git clone git@name?:user-name/repository-name.git

