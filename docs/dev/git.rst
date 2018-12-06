Git
===

Download
--------

`Download`_

.. _Download: https://git-scm.com/downloads

Config
------

.. code-block:: console

    $ git config --global user.name "your-name"
    $ git config --global user.email "your-name@domain.com"
    $ ssh-keygen -t rsa -C "your-name@domain.com"


Push a existing folder
----------------------

.. code-block:: console

    $ cd existing_folder
    $ git init
    $ git remote add origin ...
    $ git add .
    $ git commit -m "Initial commit"
    $ git push -u origin master


Cancel the command ``git add .``
--------------------------------

.. code-block:: console

    $ git reset --mixed

