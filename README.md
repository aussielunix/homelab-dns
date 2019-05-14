# HomeLab DNS Automation

This assumes you have an Ubuntu 18.04 instance available on your home network
and you have ssh access.

## MVP Docs

To be run from your workstation

* Install ansible `pip install -r requirements.txt`
* Install ansible roles `ansible-galaxy install -r requirements.yml`
* add hostname/ip address to `inventories/hosts`
* tune [domain forwarding](https://github.com/aussielunix/homelab-dns/blob/master/vars/powerdns-recursor.yml#L5)
* inspect / tune [zones](https://github.com/aussielunix/homelab-dns/tree/master/files)
* run playbook `ansible-playbook main.yml -K`
