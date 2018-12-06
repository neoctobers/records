Use Django ORM
==============

In a deeper directory, without the manage.py ::

    # coding:utf-8
    import os, sys
    from django.core.wsgi import get_wsgi_application

    # /path/to/django/project
    PROJECT_DIR = os.path.abspath(os.path.join(os.path.dirname(os.path.abspath(__file__)), os.pardir))
    sys.path.extend([PROJECT_DIR])

    # load auto.settings
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'name.settings')
    application = get_wsgi_application()

    # only if run directly
    if __name__ == "__main__":
        pass
