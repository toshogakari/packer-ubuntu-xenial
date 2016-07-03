#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

sudo apt-get install -y ntp ntpdate
sudo cp /tmp/packer/ntp.conf /etc/ntp.conf
sudo systemctl stop ntp.service
sudo ntpdate ntp.nict.jp
sudo systemctl restart ntp.service

sudo apt-get update
sudo apt-get install -y python2.7
sudo apt-get install -y software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible linux-headers-$(uname -r) build-essential dkms nfs-common portmap

sudo mkdir /media/VBoxGuestAdditions
sudo mount -o loop,ro /home/vagrant/VBoxGuestAdditions.iso /media/VBoxGuestAdditions
sudo sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
sudo umount /media/VBoxGuestAdditions
sudo rmdir /media/VBoxGuestAdditions
rm /home/vagrant/VBoxGuestAdditions.iso
