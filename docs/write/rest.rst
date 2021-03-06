reStructuredText
================

reStructuredText(reST) is the default plaintext markup language used by Sphinx.

http://www.sphinx-doc.org/en/master/usage/restructuredtext/basics.html

And, `[Official] reStructuredText Markup Specification <http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html>`_


Inline markup
-------------

- Italics: *italics*
- Bold: **bold**
- Code samples: ``code samples``

.. code-block:: text

    *italics*
    **boldface**
    ``text``


Lists and Quote-like blocks
---------------------------

* This is a bulleted list.
* It has two items, the second
  item uses two lines.

1. This is a numbered list.
2. It has two items.

.. code-block:: text

    * This is a bulleted list.
    * It has two items, the second
      item uses two lines.

    1. This is a numbered list.
    2. It has two items.

and:

#. This is a numbered list.
#. It has two items too.

.. code-block:: text

    #. This is a numbered list.
    #. It has two items too.

Nested lists
------------

Nested lists are possible

* this is
* a list

  * with a nested list
  * and some subitems

* and here the parent list continues

.. code-block:: text

    * this is
    * a list

      * with a nested list
      * and some subitems

    * and here the parent list continues

but be aware that they must be separated from the parent list items by blank lines:


Definition Lists
----------------

term (up to a line of text)
   Definition of the term, which must be indented

   and can even consist of multiple paragraphs

next term
   Description.


.. code-block:: text

    term (up to a line of text)
       Definition of the term, which must be indented

       and can even consist of multiple paragraphs

    next term
       Description.

Note that the term cannot have more than one line of text.


Quoted paragraphs
-----------------

John Doe wrote::

>> Great idea!
>
> Why didn't I think of that?

You just did!  ;-)

.. code-block:: text

   John Doe wrote::

   >> Great idea!
   >
   > Why didn't I think of that?

   You just did!  ;-)



Line Blocks
-----------

Take it away, Eric the Orchestra Leader!

    | A one, two, a one two three four
    |
    | Half a bee, philosophically,
    |     must, *ipso facto*, half not be.
    | But half the bee has got to be,
    |     *vis a vis* its entity.  D'you see?
    |
    | But can a bee be said to be
    |     or not to be an entire bee,
    |         when half the bee is not a bee,
    |             due to some ancient injury?
    |
    | Singing...

.. code-block:: text

    Take it away, Eric the Orchestra Leader!

        | A one, two, a one two three four
        |
        | Half a bee, philosophically,
        |     must, *ipso facto*, half not be.
        | But half the bee has got to be,
        |     *vis a vis* its entity.  D'you see?
        |
        | But can a bee be said to be
        |     or not to be an entire bee,
        |         when half the bee is not a bee,
        |             due to some ancient injury?
        |
        | Singing...



Literal blocks
--------------

Literal code blocks are introduced by ending a paragraph with the special marker ``::``.

The literal block must be indented (and, like all paragraphs, separated from the surrounding ones by blank lines)::

    This is a normal text paragraph. The next paragraph is a code sample::

       It is not processed in any way, except
       that the indentation is removed.

       It can span multiple lines.

    This is a normal text paragraph again.

The handling of the :: marker is smart:

- If it occurs as a paragraph of its own, that paragraph is completely left out of the document.
- If it is preceded by whitespace, the marker is removed.
- If it is preceded by non-whitespace, the marker is replaced by a single colon.


Doctest blocks
--------------

Doctest blocks are interactive Python sessions cut-and-pasted into docstrings. They do not require the literal blocks syntax. The doctest block must end with a blank line and should not end with with an unused prompt:

>>> 1 + 1
2


Tables
------

Grid tables:

+------------------------+------------+----------+----------+
| Header row, column 1   | Header 2   | Header 3 | Header 4 |
| (header rows optional) |            |          |          |
+========================+============+==========+==========+
| body row 1, column 1   | column 2   | column 3 | column 4 |
+------------------------+------------+----------+----------+
| body row 2             | ...        | ...      |          |
+------------------------+------------+----------+----------+

.. code-block:: text

    +------------------------+------------+----------+----------+
    | Header row, column 1   | Header 2   | Header 3 | Header 4 |
    | (header rows optional) |            |          |          |
    +========================+============+==========+==========+
    | body row 1, column 1   | column 2   | column 3 | column 4 |
    +------------------------+------------+----------+----------+
    | body row 2             | ...        | ...      |          |
    +------------------------+------------+----------+----------+


Simple tables:

=====  =====  =======
A      B      A and B
=====  =====  =======
False  False  False
True   False  False
False  True   False
True   True   True
=====  =====  =======

.. code-block:: text

    =====  =====  =======
    A      B      A and B
    =====  =====  =======
    False  False  False
    True   False  False
    False  True   False
    True   True   True
    =====  =====  =======


Hyperlinks
----------

External links:

This is a paragraph that contains a `Link text <https://neoctobers.readthedocs.io/>`_, inline:

.. code-block:: text

    This is a paragraph that contains a `Link text <https://neoctobers.readthedocs.io/>`_, inline:

You can also separate the link and the target definition (ref), like this:

.. code-block:: text

    This is a paragraph that contains a `Link text`_, inline:

    .. _Link text: https://neoctobers.readthedocs.io/


Internal links:

Internal linking is done via a special reST role provided by Sphinx, see the section on specific markup, Cross-referencing arbitrary locations.

See: http://www.sphinx-doc.org/en/master/usage/restructuredtext/roles.html#ref-role


Sections
--------

Section headers are created by underlining (and optionally overlining) the section title with a punctuation character, at least as long as the text:

.. code-block:: text

    =================
    This is a heading
    =================

or:

.. code-block:: text

    This is a heading
    -----------------

Normally, there are no heading levels assigned to certain characters as the structure is determined from the succession of headings. However, this convention is used in `Python’s Style Guide for documenting <https://docs.python.org/devguide/documenting.html#style-guide>`_ which you may follow:

- # with overline, for parts
- \* with overline, for chapters
- =, for sections
- -, for subsections
- ^, for subsubsections
- ", for paragraphs

For me, in this reST guide sample, I prefer ``-----------``.


Use keyword for footnote
------------------------

Here is a [#note]_ sample, and a same [#note]_ here, and a link note_ also.

.. [#note] This is the footnote labeled "note".


.. code-block:: text

    Here is a [#note]_ sample, and a same [#note]_ here, and a link note_ also.

    .. [#note] This is the footnote labeled "note".



Citations
---------

Here is a citation reference: [CIT2002]_.

.. [CIT2002] This is the citation.  It's just like a footnote,
   except the label is textual.

.. code-block:: text

    Here is a citation reference: [CIT2002]_.

    .. [CIT2002] This is the citation.  It's just like a footnote,
       except the label is textual.



Hyperlink Targets
-----------------

Clicking on this internal hyperlink will take us to the target_

.. _target:

The hyperlink target above points to this paragraph.

.. code-block:: text

    Clicking on this internal hyperlink will take us to the target_

    .. _target:

    The hyperlink target above points to this paragraph.



Substitution Definitions
------------------------

The |biohazard| symbol must be used on containers used to
dispose of medical waste.

.. |biohazard| image:: https://avatars2.githubusercontent.com/u/6206827?s=40&v=4

.. code-block:: text

    The |biohazard| symbol must be used on containers used to
    dispose of medical waste.

    .. |biohazard| image:: https://avatars2.githubusercontent.com/u/6206827?s=40&v=4




TBC
---

To be continued...



