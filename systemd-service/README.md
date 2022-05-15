Sample systemd file for running processes as daemons.

Edit and place this file in /lib/systemd/system/ and then configure some setting for your service to work:

1. Set permissions for the unit file:

sudo chmod 644 /lib/systemd/system/myservice.service

2. Configure systemd:

sudo systemctl daemon-reload
sudo systemctl enable myservice.service

Extra commands for maintaining systemd
# start a service
sudo systemctl start application.service
sudo systemctl start application

# stop a service
sudo systemctl stop application.service

# restart a service
sudo systemctl restart application.service

# reload a service
sudo systemctl reload application.service

# enable a service
sudo systemctl enable application.service

# disable a service
sudo systemctl disable application.service

# get the status log of a service
systemctl status application.service

Code and information taken from the following web sites:

https://www.codementor.io/@ufukafak/how-to-run-a-python-script-in-linux-with-systemd-1nh2x3hi0e
https://code.luasoftware.com/tutorials/linux/auto-start-python-script-on-boot-systemd/
https://unix.stackexchange.com/questions/634410/start-python-script-at-startup

