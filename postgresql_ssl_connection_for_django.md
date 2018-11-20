# PostgreSQL SSL connection for Django settings

Many many many many many many searches and tries..... Fxck...

## psycopg2 package
```
pip3 install --upgrade psycopyg2
```

### Configration file

 eference documentation: [PostgreSQL official: Database Connection Control Functions](https://www.postgresql.org/docs/current/libpq-connect.html)

Edit the `settings.py` file like this:
```python
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
            'sslcert': '/path/to/certfile',
            'sslkey': '/path/to/certfile',
            'sslrootcert': '/path/to/certfile',
        },
    },
}
```
