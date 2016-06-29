# Ubuntu 16.04 (Xenial Xerus) Vagrant base box

 - Ansible, Puppet, Chef
 - VBoxGuestAdditions 5.0.x
 - 80G disk
 - Predictable network interface names turned OFF (uses old style eth0, eth1)
 - `vagrant` user and password

## Using

```bash
$ git clone git@github.com:toshogakari/packer-ubuntu-xenial.git
$ cd packer-ubuntu-xenial
$ packer build template.json
```
