---
title: systemd
---

# systemd

systemd is a system and service manager for Linux operating systems. It is designed to provide a more efficient and unified way to manage system processes and services. Here are some key features and benefits of systemd:
* **Service Management**: Systemd manages system services and daemons, allowing you to start, stop, enable, disable, and monitor services.
* **Unit Files**: Systemd uses unit files to define services, sockets, devices, mounts, and other system resources. THese files provide a standardized way to configure and manage system resources.
* **Logging**: System includes a built-in logging system called `journald`, which collects and manages log data from various sources.
* **Timers**: System can replace traditional cron jobs with timer units, providing more flexibility and integration with the rest of the system.

The main command used to control systemd is `systemctl`.

## Service Management
??Units??

To enable/disable a service to start at boot:
```
sudo systemctl enable unit-name
sudo systemctl disable unit-name
```

#### Docs
* https://wiki.archlinux.org/title/Systemd