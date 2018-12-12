PyPI: xpi - some useful functions for Raspberry Pi3B+
=====================================================

https://github.com/neoctobers/xpi


Installation
------------

.. code-block:: console

    $ pip3 install -U xpi


Usage
-----

.. code-block:: python

    import xpi

    ip = xpi.get_host_ip()  # Get host IP address by UDP
    ip = xpi.save_host_ip() # Force to save the IP address to a temporary file
    ip = xpi.read_host_ip() # Read the IP address from a temporary file, or get and save it

