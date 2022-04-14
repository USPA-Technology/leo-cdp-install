#!/bin/sh

# create the user leocdp 
sudo useradd leocdp -s /bin/bash -p '*'
sudo passwd -d leocdp
sudo usermod -aG sudo leocdp
echo 'leocdp ALL=(ALL) NOPASSWD: ALL' | sudo tee -a /etc/sudoers >/dev/null

# make folder to git pull 
sudo mkdir /build/
sudo git clone https://github.com/trieu/leo-cdp-free-edition.git /build/leo-cdp

# update permissions
sudo chown -R leocdp:leocdp /build/
sudo chmod +x /build/leo-cdp/*.sh
