# PyPI

## pip3 install
```
pip3 install --user --upgrade setuptools wheel twine
```

## `~/.pypirc` file
```
[distutils]
index-servers=pypi

[pypi]
repository = https://upload.pypi.org/legacy/
username = <username>
password = <password>
```

## pack
```
py setup.py sdist bdist_wheel
```

## upload
```
twine upload dist/*
```
