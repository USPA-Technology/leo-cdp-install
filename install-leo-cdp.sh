#!/bin/sh

sudo apt install git
sudo useradd leocdp -s /bin/bash -p '*'
sudo passwd -d leocdp
sudo usermod -aG sudo leocdp
echo 'leocdp ALL=(ALL) NOPASSWD: ALL' | sudo tee -a /etc/sudoers >/dev/null
sudo mkdir /build/
sudo git clone https://github.com/trieu/leo-cdp-free-edition.git /build/leo-cdp
sudo chown -R leocdp:leocdp /build/