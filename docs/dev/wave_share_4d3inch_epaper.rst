WaveShare 4.3inch e-paper UART module
=====================================

- Official: `WaveShare 4.3inch e-paper UART module`_
- Github: `neoctobers/wave_share_4.3inch_epaper`_

.. _WaveShare 4.3inch e-paper UART module: http://www.waveshare.net/wiki/4.3inch_e-Paper_UART_Module
.. _neoctobers/wave_share_4.3inch_epaper: https://github.com/neoctobers/wave_share_4.3inch_epaper


Installation
------------

.. code-block:: console

    $ pip3 install -U wave-share-4d3inch-epaper

Preview
-------

.. image:: https://github.com/neoctobers/wave_share_4.3inch_epaper/raw/master/screen.jpg
    :height: 858px
    :width: 1000px
    :scale: 50%
    :alt: screen
    :align: center

Demo
----

.. code-block:: python

    import wave_share_4d3inch_epaper

    # init on COM3
    ep = wave_share_4d3inch_epaper.EPaper('COM3')

    # clear
    ep.clear()

    # rotation 0
    ep.set_rotation(ep.ROTATION_0)

    # black
    ep.set_color(ep.COLOR_BLACK)

    # rect
    ep.rect(0, 0, 799, 599)

    # gray
    ep.set_color(ep.COLOR_GRAY)

    # rect
    ep.rect(10, 10, 790, 590)

    # black
    ep.set_color(ep.COLOR_BLACK)

    # text
    ep.set_font_size_en(ep.FONT_SIZE_48)
    ep.set_font_size_zh(ep.FONT_SIZE_48)
    ep.text(20, 50, 'WaveShare 4.3inch e-paper UART module')

    # dark gray
    ep.set_color(ep.COLOR_DARK_GRAY)

    # text
    ep.set_font_size_en(ep.FONT_SIZE_32)
    ep.set_font_size_zh(ep.FONT_SIZE_32)
    ep.text(20, 150, 'pip3 install -U wave-share-4d3inch-epaper')

    # author
    ep.text(20, 270, 'Author: neoctobers')
    ep.text(20, 320, 'Github: https://git.io/wave_share_4.3inch_epaper')

    # line
    ep.line(700, 300, 700, 550)
    ep.line(710, 300, 710, 550)
    ep.line(720, 300, 720, 550)

    # text
    ep.text(50, 450, 'BLACK')

    # circle
    ep.fill_circle(75, 525, 25)
    ep.circle(175, 525, 25)

    # dark gray
    ep.set_color(ep.COLOR_DARK_GRAY)

    # text
    ep.text(250, 450, 'DARK_GRAY')

    # tri
    ep.fill_tri(275, 500, 250, 550, 300, 550)
    ep.tri(375, 500, 350, 550, 400, 550)

    # gray
    ep.set_color(ep.COLOR_GRAY)

    # text
    ep.text(450, 450, 'GRAY')

    # rect
    ep.fill_rect(450, 500, 500, 550)
    ep.rect(550, 500, 600, 550)

    # bmp
    ep.bmp(625, 125, 'FNUT.BMP')

    # update
    ep.update()

