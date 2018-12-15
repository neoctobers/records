PyPI: list-ext - A Python list extension.
=========================================

.. image:: http://img.shields.io/pypi/v/list-ext.svg


A list extension:

- unique
- strip
- strip_and_unique
- remove
- strip_and_remove
- sur



Installation
------------

.. code-block:: console

    $ pip3 install -U list-ext


Usage
-----

.. code-block:: python

    import list_ext

    a = ['abc', ' abc ', 'a', 'b', 'c', 'a', 'b', '', '', 'd', None, 0, '', '1']

    print(a)
    print()
    print(list_ext.unique(a))
    print(list_ext.strip(a))
    print(list_ext.remove(a, ['', None, 0]))
    print(list_ext.remove(a))
    print(list_ext.remove(a, 0))
    print(list_ext.strip_and_unique(a))
    print(list_ext.strip_and_remove(a))
    print(list_ext.sur(a))
    print(list_ext.sur(a, 0))



Result:

.. code-block:: console

    ['abc', ' abc ', 'a', 'b', 'c', 'a', 'b', '', '', 'd', None, 0, '', '1']

    ['abc', ' abc ', 'a', 'b', 'c', '', 'd', None, 0, '1']
    ['abc', 'abc', 'a', 'b', 'c', 'a', 'b', '', '', 'd', None, 0, '', '1']
    ['abc', ' abc ', 'a', 'b', 'c', 'a', 'b', 'd', '1']
    ['abc', ' abc ', 'a', 'b', 'c', 'a', 'b', 'd', 0, '1']
    ['abc', ' abc ', 'a', 'b', 'c', 'a', 'b', '', '', 'd', None, '', '1']
    ['abc', 'a', 'b', 'c', '', 'd', None, 0, '1']
    ['abc', 'abc', 'a', 'b', 'c', 'a', 'b', 'd', 0, '1']
    ['abc', ' abc ', 'a', 'b', 'c', 'a', 'b', 'd', 0, '1']
    ['abc', ' abc ', 'a', 'b', 'c', 'a', 'b', '', '', 'd', None, '', '1']


