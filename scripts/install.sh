#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive
sudo apt update
sudo apt-get -y install python2.7
sudo apt-get -y install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install -y ansible linux-headers-$(uname -r) build-essential dkms nfs-common portmap

sudo mkdir /media/VBoxGuestAdditions
sudo mount -o loop,ro /home/vagrant/VBoxGuestAdditions.iso /media/VBoxGuestAdditions
sudo sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
sudo umount /media/VBoxGuestAdditions
sudo rmdir /media/VBoxGuestAdditions
rm /home/vagrant/VBoxGuestAdditions.iso
