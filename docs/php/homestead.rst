Lavarel-Homestead on Win10
==========================

https://laravel.com/docs/5.7/homestead



VirtualBox and Vagrant
----------------------

Download and install:

- VirtualBox: https://www.virtualbox.org/wiki/Downloads
- Vagrant: https://www.vagrantup.com/downloads.html



Clone Homestead
---------------

.. code-block:: console

    $ git clone https://github.com/laravel/homestead.git



Download Laravel Homestead Box file
-----------------------------------

Index page: https://app.vagrantup.com/laravel/boxes/homestead

Find the latest version, ``v6.4.0`` for example, copy the url ``https://app.vagrantup.com/laravel/boxes/homestead/versions/6.4.0``, append ``/providers/virtualbox.box``, it will be ``https://app.vagrantup.com/laravel/boxes/homestead/versions/6.4.0/providers/virtualbox.box``.

Download it to the homestead directory, and create a file ``virtualbox.json``:

.. code-block:: text

    {
        "name": "laravel/homestead",
        "versions": [{
            "version": "6.4.0",
            "providers": [{
                "name": "virtualbox",
                "url": "virtualbox.box"
            }]
        }]
    }



Add virtualbox to vagrant
-------------------------

Under the homestead directory:

.. code-block:: console

    $ vagrant box add virtualbox.json
    ==> box: Loading metadata for box 'virtualbox.json'
        box: URL: file://D:/_dev/homestead/virtualbox.json
    ==> box: Adding box 'laravel/homestead' (v6.4.0) for provider: virtualbox
        box: Downloading: virtualbox.box
        box: Progress: 100% (Rate: 892M/s, Estimated time remaining: --:--:--)
    ==> box: Successfully added box 'laravel/homestead' (v6.4.0) for 'virtualbox'!



Launch
------

.. code-block:: console

    $ vagrant up

Or use a ``.bat`` script.

