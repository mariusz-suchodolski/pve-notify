# pve-notify
Notify Apprise-compatible providers from Proxmox

## How to setup

#### Get the script

```cd /tmp && wget https://github.com/mariusz-suchodolski/pve-notify/raw/main/notify.py && chmod 755 /tmp/notify.py && mv /tmp/notify.py /usr/bin/notify-apprise```

#### Edit the script to include your desired notification service

#### Install Python 3 and required dependencies 

```root@pve:~# apt install python3 python3-pip```
```root@pve:~# pip install mail-parser apprise```

#### Backup and update your .forward file

```cp /root/.forward /root/.forward.bak && echo "|/usr/bin/notify-apprise" > /root/.forward```
