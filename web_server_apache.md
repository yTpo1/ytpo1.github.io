---
title: Apache HTTP Server
---

# Apache HTTP Server

To start the server, view the status, etc, use [systemctl](./linux_systemd.md):
```
sudo systemctl start httpd.service
sudo systemctl status httpd.service
```

By default, it will serve the directory `/srv/http` to anyone who visits your website.

If everything is working correctly, visiting http://localhost/ should display a simple index page. 

[arch wiki](https://wiki.archlinux.org/title/Apache_HTTP_Server)