Read the docs
=============

Use `sphinx`_ to write a documentation, and host it on `RTD`_, just like this page(site) you are reading.

Initial docs by sphinx
----------------------

`RTD Quick Start`_

Install `sphinx`_ with pip, then ``sphinx-quickstart`` to init.

.. code-block:: console

    $ pip install sphinx
    $ cd /path/to/project
    $ mkdir docs
    $ cd docs
    $ sphinx-quickstart

Edit the ``.rst`` files to write.

To make html for preview locally, run:

.. code-block:: console

    $ make html


Localization of Documentation
-----------------------------

`RTD Manage Translations`_

Create/Update translatable files:

.. code-block:: console

    $ make gettext

or:

.. code-block:: console

    $ sphinx-build -b gettext . _build/gettext

This command above will leave the generated files under ``_build/gettext``.

Generate ``.po`` files from source language manually:

.. code-block:: console

    $ sphinx-intl update -p _build/gettext -l zh_CN

Do translate, edit the ``.po`` files.

Then,

Build the documentation in target language, for preview locally:

.. code-block:: console

    $ sphinx-build -D language=zh_CN . _build/html/zh_CN


Multi-languages in RTD
----------------------

Manually.


Use Transifex?
--------------

https://docs.readthedocs.io/en/latest/guides/manage-translations.html#using-transifex



.. _RTD: https://readthedocs.org/
.. _RTD Quick Start: https://docs.readthedocs.io/en/latest/intro/getting-started-with-sphinx.html
.. _sphinx: http://sphinx-doc.org/install.html
.. _RTD Manage Translations: https://docs.readthedocs.io/en/latest/guides/manage-translations.html
