#!/bin/bash

/usr/local/bin/k3s-killall.sh
sudo systemctl stop k3s
sudo systemctl disable k3s
