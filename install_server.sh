#!/bin/bash
set -e

sudo mkdir -p /etc/dae
sudo cp ./config.dae /etc/dae/
sudo cp ./dae-linux-x86_64_v3_avx2 /usr/bin/dae
sudo cp dae.service /etc/systemd/system/
sudo cp ./geo* /etc/dae/
sudo chmod 600 /etc/dae/config.dae
sudo systemctl enable --now dae
sudo systemctl status dae --no-pager
