#!/bin/bash

expr $(cat /etc/deathstamp) - $(date +%s)
