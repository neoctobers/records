# openssl

## Creating a self-signed certificate using OpenSSL

To create a self-signed SSL certificate using openssl, run the following command:
```
openssl req -newkey rsa:2048 -sha256 -nodes -keyout private.key -x509 -days 3650 -out cert.pem
```

The `openssl` utility will ask you a few details. **Make sure you enter the correct FQDN!** If your server has a domain, enter the full domain name here (eg. `sub.example.com`).

Reference documentation: [Python-Telegram-Bot / Wiki / Webhook](https://github.com/python-telegram-bot/python-telegram-bot/wiki/Webhooks)
