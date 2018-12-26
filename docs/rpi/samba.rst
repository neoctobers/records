Share thr samba
===============

Share files and folders.

Installation
------------

.. code-block:: console

   $ sudo apt install samba samba-common-bin
   $ sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.bak



Configuration
-------------

``/etc/samba/smb.conf``:

.. code-block:: text

   [global]
   security = user
   encrypt passwords = true
   guest account = nobody
   map to guest = bad user

   #======================= Share Definitions =======================
   [share]
   comment = Guest access shares
   path = /data/share
   browseable = yes
   writable = yes
   #read only = yes
   guest ok = yes
   public = yes

   [data]
   comment = NAS
   path = /data
   browseable = yes
   writable = yes
   valid users = root pi



Start samba
-----------

.. code-block:: console

   $ sudo service samba restart
   Failed to restart samba.service: Unit samba.service is masked.


WTF is masked?!!

.. code-block:: console

   $ sudo rm /lib/systemd/system/samba.service
   $ sudo systemctl enable samba
   samba.service is not a native service, redirecting to systemd-sysv-install.
   Executing: /lib/systemd/systemd-sysv-install enable samba
   update-rc.d: error: samba Default-Start contains no runlevels, aborting.

   $ sudo service samba restart
   pi@RPi3Bp0:/data $ sudo service samba status
   ● samba.service - LSB: ensure Samba daemons are started (nmbd, smbd and samba)
      Loaded: loaded (/etc/init.d/samba; generated; vendor preset: enabled)
      Active: active (exited) since Wed 2018-12-26 15:22:14 HKT; 7s ago
        Docs: man:systemd-sysv-generator(8)
     Process: 11428 ExecStop=/etc/init.d/samba stop (code=exited, status=0/SUCCESS)
     Process: 11451 ExecStart=/etc/init.d/samba start (code=exited, status=0/SUCCESS)

   Dec 26 15:22:14 RPi3Bp0 systemd[1]: Starting LSB: ensure Samba daemons are started (nmbd, smbd and samba)...
   Dec 26 15:22:14 RPi3Bp0 samba[11451]: Starting nmbd (via systemctl): nmbd.service.
   Dec 26 15:22:14 RPi3Bp0 samba[11451]: Starting smbd (via systemctl): smbd.service.
   Dec 26 15:22:14 RPi3Bp0 systemd[1]: Started LSB: ensure Samba daemons are started (nmbd, smbd and samba).

Cannot get shared resource in LAN?



Add pi as samba user
--------------------

.. code-block:: console

   $ sudo touch /etc/samba/smbpasswd
   $ sudo smbpasswd -a pi
   New SMB password:
   Retype new SMB password:
   Added user pi.



Restart service
---------------

.. code-block:: console

   $ sudo service samba reload
   $ sudo service samba restart
   $ sudo service samba status



OKay.

