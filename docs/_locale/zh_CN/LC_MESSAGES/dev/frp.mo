��          �               L     M     l     �     �  	   �     �     �     �  .   �  $      G   E  2   �     �     �     �     �     �  &     �  :     �     �     �       	        )     ;     @  .   `  $   �  G   �  2   �     /     ?     O     \     l  &   �   Client-side, win10 for example Edit the ``frpc.ini``:: Edit the ``frps.ini``:: Enable the service: Enjoy it! FRP reverse proxy Run: Server-side, ubuntu for example Write a ``/etc/systemd/system/frps.service``:: [Install] WantedBy=multi-user.target [Service] ExecStart=/path/to/frps -c /path/to/frps.ini Restart=on-abort [Unit] Description=FRP Server After=network.target `Documents CN`_ `Documents EN`_ `Downloads`_ `Project Link`_ or run it in console: start / stop / restart / check status: Project-Id-Version: neoctobers latest
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-12-09 10:41+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 Client-side, win10 for example Edit the ``frpc.ini``:: Edit the ``frps.ini``:: Enable the service: Enjoy it! FRP reverse proxy Run: Server-side, ubuntu for example Write a ``/etc/systemd/system/frps.service``:: [Install] WantedBy=multi-user.target [Service] ExecStart=/path/to/frps -c /path/to/frps.ini Restart=on-abort [Unit] Description=FRP Server After=network.target `Documents CN`_ `Documents EN`_ `Downloads`_ `Project Link`_ or run it in console: start / stop / restart / check status: 