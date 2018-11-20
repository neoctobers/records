# Generate SSL cert

Use `openssl` to generate a SSL `private.key` & `cert.pem` pair:
```
openssl req -newkey rsa:2048 -sha256 -nodes -keyout private.key -x509 -days 3650 -out cert.pem
```

The `openssl` utility will ask you a few details. **Make sure you enter the correct FQDN!** If your server has a domain, enter the full domain name here (eg. `sub.example.com`).
