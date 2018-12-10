Disable Raspberry Pi3B+ Bluetooth and restore UART0/ttyAMA0 over GPIO
=====================================================================

Release the serial port, GPIO:

=====  ===========
GPIO   FUNC
=====  ===========
6      TXD0(UART)
8      RXD0(UART)
=====  ===========


Edit ``/boot/config.txt``, add this line
----------------------------------------

.. code-block:: text

    dtoverlay=pi3-disable-bt


Check
-----

.. code-block:: console

    $ ls -l /dev


Disable ``hciuart.service``
---------------------------

.. code-block:: console

    $ systemctl disable hciuart


Disable serial console
----------------------

.. code-block:: console

    $ systemctl stop serial-getty@ttyAMA0.service
    $ systemctl disable serial-getty@ttyAMA0.service

