PyPI
====

Installation
------------

.. code-block:: console

   $ pip3 install --user --upgrade setuptools wheel twine



Configuration
-------------

`~/.pypirc` file:

.. code-block:: text

   [distutils]
   index-servers=pypi

   [pypi]
   repository = https://upload.pypi.org/legacy/
   username = <username>
   password = <password>



Pack
----

.. code-block:: console

   $ py setup.py sdist bdist_wheel



Upload
------

.. code-block:: console

   $ twine upload dist/*
