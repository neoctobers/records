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

    $ make gettext
    $ sphinx-build -b gettext . _build/gettext

Translate text from source language manually:

.. code-block:: console

    $ sphinx-intl update -p _build/gettext -l zh_CN

Do translate, edit the ``.po`` files.

Then,

Build the documentation in target language, for preview locally:

.. code-block:: console

    $ sphinx-build -b html -D language=zh_CN . _build/html/zh_CN


BUT, WHY::

    Running Sphinx v1.8.2
    loading translations [zh_CN]... done
    loading pickled environment... done
    building [mo]: targets for 0 po files that are out of date
    building [html]: targets for 1 source files that are out of date
    updating environment: [] 0 added, 1 changed, 0 removed
    reading sources... [100%] dev/read_the_docs
    looking for now-outdated files... none found
    pickling environment... done
    checking consistency... done
    preparing documents... WARNING: search index couldn't be loaded, but not all documents will be built: the index will be incomplete.
    done
    writing output... [100%] index
    generating indices... genindex
    writing additional pages... search
    copying static files... done
    copying extra files... done
    dumping search index in Chinese (code: zh) ... done
    dumping object inventory... done
    build succeeded, 1 warning.

    The HTML pages are in _build\html\zh_CN.


``./zh_CN`` is ready, except 'index.rst'.


Multi-languages in RTD
----------------------

manually.


Transifex
---------

.. code-block:: console

    $ tx config mapping-bulk --project neoctobers --file-extension '.pot' --source-file-dir _build/gettext --source-lang en --type PO --expression 'locale/<lang>/LC_MESSAGES/{filepath}/{filename}.po' --execute



Commands
--------

.. code-block:: console

    $ make gettext
    $ sphinx-intl update -p _build/gettext -l zh_CN
    $ make html
    $ sphinx-build -b html -D language=zh_CN . _build/html/zh_CN
