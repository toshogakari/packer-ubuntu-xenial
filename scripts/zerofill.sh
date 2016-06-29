#!/usr/bin/env bash

sudo aptitude autoclean
sudo apt-get autoremove
sudo apt-get clean
sudo find /var/log -type f | while read f; do
  echo -ne ‘’ | sudo tee -a $f
done
sudo rm -rf /var/log/* /tmp/* /var/tmp/* /usr/local/src/* /var/ww/html
sudo e4defrag /
sudo dd if=/dev/zero of=/EMPTY bs=1M
sudo rm -rf /EMPTY
sudo rm -rf /home/vagrant/.bash_history
