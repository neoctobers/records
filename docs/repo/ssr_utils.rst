PyPI: ssr-utils - Shadowsocks(R) Utils
======================================

Shadowsocks(R) utils:

- Get SSR URLs by subscribe
- SSR URL encode/decode
- Generate plain text
- Generate ``.json`` config file
- Check available (for linux only)



Installation
------------

.. code-block:: console

    $ pip3 install ssr-utils



Usage
-----

.. code-block:: python

    import ssr_utils

    ssr = ssr_utils.SSR()

    ssr.set(server=server,
            port=port,
            method=method,
            password=password,
            protocol=protocol,
            proto_param=proto_param,
            obfs=obfs,
            obfs_param=obfs_param,

            remarks=remarks,
            group=group,
            )

    # or
    ssr.url = 'ssr://...' # 'ss://...' is accepted too


    # and you may:
    ssr.remarks = '...'
    ssr.group = '...'

    # then...
    print(ssr.url)
    print(ssr.plain)
    print(ssr.config)


    # generage a config file, as .json
    ssr.local_address = '127.0.0.1'
    ssr.local_port = 1080
    ssr.path_to_config = 'config.json'
    print(ssr.json_string)
    ssr.generate_config_file()


    # even, healthy check, for linux only and need a .env file
    if ssr.is_available:
        print(ssr.ip)
        print(ssr.country)
        print(ssr.country_code)



Get SSR URLs by subscribe
-------------------------

.. code-block:: python

    import ssr_utils

    urls = ssr_utils.get_ssr_urls_by_subscribe('https://...')


