#!/bin/bash

time="$1"

future=$(date -d "+$time" +%s)
echo $future | sudo tee /etc/deathstamp > /dev/null

echo "Expiry set to $(date -d @$future). Run this command again to extend time."
