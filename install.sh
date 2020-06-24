#!/bin/bash

sudo cp reaperd /usr/bin/
sudo chmod +x /usr/bin/reaperd

cp reaperd.service /etc/systemd/system/reaperd.service
sudo chmod 664 /etc/systemd/system/reaperd.service

sudo systemctl daemon-reload
sudo systemctl start reaperd
