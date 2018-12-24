PostgreSQL: Grant all privileges on all xxx in schema public to user-name
=========================================================================

For tables:

.. code-block:: sql

   # GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO user-name;

:ref: https://poanchen.github.io/blog/2018/03/07/How-to-fix-permission-denied-for-relation-some_table_name-in-PostgreSQL




For sequence ``xx_id_seq``:

.. code-block:: sql

   # GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO user-name;

:ref: https://stackoverflow.com/questions/9325017/error-permission-denied-for-sequence-cities-id-seq-using-postgres

