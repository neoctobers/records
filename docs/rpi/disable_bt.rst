Disable Bluetooth and restore UART0/ttyAMA0 over GPIO
=====================================================

Release the serial port, GPIO:

=====  ===========
GPIO   FUNC
=====  ===========
6      TXD0(UART)
8      RXD0(UART)
=====  ===========



Modify Boot Configuration
-------------------------

Edit ``/boot/config.txt``, append:

.. code-block:: text

   # Disable BT
   dtoverlay=pi3-disable-bt

Reboot.



Check
-----

.. code-block:: console

   $ ls -l /dev
   ...
   lrwxrwxrwx 1 root root           7 Dec 21 21:10 serial0 -> ttyAMA0
   lrwxrwxrwx 1 root root           5 Dec 21 21:10 serial1 -> ttyS0
   ...


Disable ``hciuart.service``
---------------------------

.. code-block:: console

   $ sudo systemctl disable hciuart
   Removed /etc/systemd/system/multi-user.target.wants/hciuart.service.



Disable serial console
----------------------

.. code-block:: console

   $ sudo systemctl stop serial-getty@ttyAMA0.service
   $ sudo systemctl disable serial-getty@ttyAMA0.service

