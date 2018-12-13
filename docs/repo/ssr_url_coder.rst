PyPI: ssr-url-coder - Shadowsocks(R) URL Decoder/Encoder
========================================================

Can decode a ``ssr://`` or ``ss://`` URL to:

- config dict
- plain text
- ``.json`` file


Subscription supported now.



Installation
------------

.. code-block:: console

    $ pip3 install ssr-url-coder



Decode methods
--------------

.. code-block:: python

    import ssr_url_coder

    url = 'ssr://...'

    config_dict = ssr_url_coder.url2dict(url)
    print('config_dict')
    print(config_dict)

    plain_text = ssr_url_coder.dict2plain(config_dict)
    print('plain_text')
    print(plain_text)

    # This will save a `config.json` file, and return a `json_text`.
    json_text = ssr_url_coder.dict2json_file(config=config_dict,
                                             path_to_file='config.json',
                                             local_address='127.0.0.1',
                                             local_port=1080,
                                             )
    print('json_text')
    print(json_text)


Get subscribe method
--------------------

.. code-block:: python

    import ssr_url_coder

    client = ssr_url_coder.Client()

    ssr_urls = client.get_ssr_urls_by_subscribe('https://...')



ToDo
-----

All about encode? Maybe.


