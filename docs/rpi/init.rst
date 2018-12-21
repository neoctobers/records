Init a RPi3B+ (and boot from USB HDD)
=====================================

records...


Hardware
--------

- **RPi3B+** x1
- **TF 16G** x1
- **USB HDD** 1T x1
- **USB Keyboard** x1
- **USB Mouse** x1



Image Flashing Tool
-------------------

- balenaEtcher-Portable-1.4.8-x64

:ref: https://www.balena.io/etcher/



System Image
------------

https://www.raspberrypi.org/downloads/raspbian/



Switch to: Boot from USB HDD
----------------------------

#. Write the image to TF card.
#. Add ``program_usb_boot_mode=1`` to file ``cmdline.txt``
#. Insert the TF card, power on for about 60 seconds, power off, remove the TF
#. Write the image to USB HDD
#. Adjust partitions, by ``DiskGenius``, on win10:

   - 0: keep the ``boot``, do not edit it
   - 2: adjust ``rootfs`` to ``32GB``, and move it to the end, end, end
   - 1: create an ``ext4`` partition, with the rest all spaces, named ``data``


Configurations
--------------

#. Boot to ``Raspbian desktop``, follow the guide, then reboot
#. Terminal:

   - sudo apt update
   - sudo apt upgrade

#. Pi Configuration

   - rename
   - switch boot to CLI, will disable auto login at the same time
   - enable SSH

#. reboot


Mount partition #1
------------------

Append one line to ``/etc/fstab``, before it, make sure ``/dev/sda3`` is correct:

.. code-block:: text

   /dev/sda3    /data    ext4    defaults    1    1

Reboot



Change /data owner to pi
------------------------

.. code-block:: console

   $ sudo chown pi /data



hd-idle
-------

To protect the HDD, suspend when idle.

:ref: http://www.mkitby.com/2016/05/15/raspberry-pi-nas-manage-hdd-power/


Check support:

.. code-block:: console

   $ cat /proc/diskstats
   1       0 ram0 0 0 0 0 0 0 0 0 0 0 0
   1       1 ram1 0 0 0 0 0 0 0 0 0 0 0
   1       2 ram2 0 0 0 0 0 0 0 0 0 0 0
   1       3 ram3 0 0 0 0 0 0 0 0 0 0 0
   1       4 ram4 0 0 0 0 0 0 0 0 0 0 0
   1       5 ram5 0 0 0 0 0 0 0 0 0 0 0
   1       6 ram6 0 0 0 0 0 0 0 0 0 0 0
   1       7 ram7 0 0 0 0 0 0 0 0 0 0 0
   1       8 ram8 0 0 0 0 0 0 0 0 0 0 0
   1       9 ram9 0 0 0 0 0 0 0 0 0 0 0
   1      10 ram10 0 0 0 0 0 0 0 0 0 0 0
   1      11 ram11 0 0 0 0 0 0 0 0 0 0 0
   1      12 ram12 0 0 0 0 0 0 0 0 0 0 0
   1      13 ram13 0 0 0 0 0 0 0 0 0 0 0
   1      14 ram14 0 0 0 0 0 0 0 0 0 0 0
   1      15 ram15 0 0 0 0 0 0 0 0 0 0 0
   7       0 loop0 0 0 0 0 0 0 0 0 0 0 0
   7       1 loop1 0 0 0 0 0 0 0 0 0 0 0
   7       2 loop2 0 0 0 0 0 0 0 0 0 0 0
   7       3 loop3 0 0 0 0 0 0 0 0 0 0 0
   7       4 loop4 0 0 0 0 0 0 0 0 0 0 0
   7       5 loop5 0 0 0 0 0 0 0 0 0 0 0
   7       6 loop6 0 0 0 0 0 0 0 0 0 0 0
   7       7 loop7 0 0 0 0 0 0 0 0 0 0 0
   8       0 sda 17021 1174 1520519 302550 51991 7860 10477700 1732050 0 237770 2034780
   8       1 sda1 146 199 4589 1050 3 0 4 10 0 770 1060
   8       2 sda2 16756 923 1507888 299660 5031 7169 344976 359560 0 79220 659400
   8       3 sda3 95 52 6994 1660 45719 691 10132720 1371990 0 163900 1373650

Install dependencies:

.. code-block:: console

   $ sudo apt install build-essential fakeroot debhelper -y


Download:

.. code-block:: console

   $ wget http://sourceforge.net/projects/hd-idle/files/hd-idle-1.05.tgz

Unzip and cd in:

.. code-block:: console

   $ tar -xvf hd-idle-1.05.tgz && cd hd-idle

Install:

.. code-block:: console

   $ sudo dpkg-buildpackage -rfakeroot
   $ sudo dpkg -i ../hd-idle_*.deb

Check for support:

.. code-block:: console

   $ sudo hd-idle -i 0 -a sda -i 300 -d
   probing sda: reads: 1520519, writes: 10949452
   ^C

``Ctrl + C`` to break.

Edit conf:

.. code-block:: console

   $ sudo nano /etc/default/hd-idle

Modify:

.. code-block:: text

   START_HD_IDLE=true

Append for idle, after ``600`` seconds:

.. code-block:: text

   HD_IDLE_OPTS="-i 0 -a sda -i 600"

Restart the service:

.. code-block:: console

   $ sudo service hd-idle restart



