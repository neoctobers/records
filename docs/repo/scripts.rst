Github: Some useful scripts
===========================

https://github.com/neoctobers/scripts



Clone and config
----------------

.. code-block:: console

    $ git clone git@github.com:neoctobers/scripts.git


Add the absolute path to ``PATH``.

Then you can use these ``.bat`` commands everywhere.



Homestead
---------

Add the homestead directory's absolute path to the name ``homesteadVagrant`` in system environment variables.

Then, use the command ``homestead`` as ``vagrant``, for example:

.. code-block:: console

    $ homestead -up

    $ homestead reload --provision

    $ homestead halt

