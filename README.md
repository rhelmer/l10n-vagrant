l10n-vagrant
============

Vagrant VM for l10n automation

This project will use [Vagrant](http://vagrantup.com) and
[Puppet](http://puppetlabs.com) to install a complete Mozilla l10n
automation environment in a local [VirtualBox](http://virtualbox.org) VM.

---
INSTALL
---

1) Install the latest Virtualbox from http://www.virtualbox.org/ 

2) Install vagrant from http://vagrantup.com/

3) git clone master-ball, slave-ball, a10n and elmo

4) build VM and provision with puppet:

$ vagrant up

5) Enjoy your l10n environment!

Here are some common vagrant operations:

SSH into your VM (l10n automation is shared to /src/l10n):

$ vagrant ssh

Re-run puppet

$ vagrant provision

Reboot VM and re-run puppet

$ vagrant reload

Destroy VM and rebuild from scratch

$ vagrant destroy 

$ vagrant up
