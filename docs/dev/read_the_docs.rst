Read the docs
=============

Official Quick Start: https://docs.readthedocs.io/en/latest/intro/getting-started-with-sphinx.html

Install sphinx
--------------

Install `sphinx`_ with pip.

.. _sphinx: http://sphinx-doc.org/install.html

.. code-block:: console

    $ pip install sphinx


Multiple languages
------------------

Create/Update translatable files:

.. code-block:: console

    $ sphinx-build -b gettext . _build/gettext

Translate text from source language manually:

.. code-block:: console

    $ sphinx-intl update -p _build/gettext -l zh_CN -l zh_TW

Do translate, edit the ``.po`` files.


Generate the ``.mo`` files:

.. code-block:: console

    $ sphinx-build build

Build the documentation in target language:

.. code-block:: console

    $ sphinx-build -b html -D language=zh_CN . _build/html/zh_CN

``./zh_CN`` is ready.

but, how to upload or sync the new language to RTD?


Transifex
---------

.. code-block:: console

    $ tx config mapping-bulk --project neoctobers --file-extension '.pot' --source-file-dir _build/gettext --source-lang en --type PO --expression 'locale/<lang>/LC_MESSAGES/{filepath}/{filename}.po' --execute

