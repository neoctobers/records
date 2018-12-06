PostgreSQL SSL connection for Django settings
=============================================

Many many many many many many searches and tries..... Fxck...

psycopg2 package
----------------
::

    pip3 install --upgrade psycopg2

configration file
-----------------

PostgreSQL official: Database Connection Control Functions

https://www.postgresql.org/docs/current/libpq-connect.html


Edit the ``settings.py`` file like this::

    DATABASES = {
        # 'default': {
        #     'ENGINE': 'django.db.backends.sqlite3',
        #     'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
        # },
        'default': {
            'ENGINE': 'django.db.backends.postgresql_psycopg2',
            'HOST': 'server-ip',
            'PORT': '5432',
            'NAME': 'database-name',
            'USER': 'username',
            'PASSWORD': 'password',
            'OPTIONS': {
                'sslmode': 'require',
                'sslcert': '/path/to/file',
                'sslkey': '/path/to/file',
                'sslrootcert': '/path/to/file',
            },
        },
    }
