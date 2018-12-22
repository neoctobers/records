Restore UART/ttyAMA0 over GPIO, by Disable BT
=============================================

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



Permit access for pi
--------------------

.. code-block:: console

   $ sudo raspi-config

Select: ``Interfacing Options`` - ``Serial``:

- Disable the login shell on the serial
- Enable the serial port hardware
- Reboot


:ref: https://www.raspberrypi.org/forums/viewtopic.php?t=180254



Disable ``hciuart.service``
---------------------------

.. code-block:: console

   $ sudo systemctl disable hciuart
   Removed /etc/systemd/system/multi-user.target.wants/hciuart.service.

