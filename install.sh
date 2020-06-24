#!/bin/bash

sudo cp reaperd /usr/bin/
sudo cp set-expiry.sh /usr/bin/
sudo cp seconds-to-death.sh /usr/bin/
sudo chmod +x /usr/bin/reaperd
sudo chmod +x /usr/bin/seconds-to-death.sh
sudo chmod +x /usr/bin/set-expiry.sh

sudo cp reaperd.service /etc/systemd/system/reaperd.service
sudo chmod 664 /etc/systemd/system/reaperd.service

sudo systemctl daemon-reload
sudo systemctl enable reaperd
sudo systemctl start reaperd
sudo set-expiry.sh "1000 years"
