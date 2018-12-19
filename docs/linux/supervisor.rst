Supervisor
==========

Supervisor: A Process Control System

http://supervisord.org/index.html


Install
-------

.. code-block:: console

    $ sudo apt install supervisor


sample.conf
-----------

REF: http://supervisord.org/configuration.html#program-x-section-example

Under ``/etc/supervisor/conf.d/``, write a file ``sample.conf`` like:

.. code-block:: text

    [program:sample]
    directory=/path/to/dir/
    command=/path/to/file --param
    autostart=true
    autorestart=true
    startretries=5
    redirect_stderr=true
    stdout_logfile=/path/to/file.log


Commands
--------

.. code-block:: console

    $ supervisorctl status
    $ supervisorctl reload
    $ supervisorctl restart all

    $ supervisorctl stop sample
    $ supervisorctl start sample
    $ supervisorctl restart sample
    $ supervisorctl update
