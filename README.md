Vagrant VM for l10n automation
============
This project will use [Vagrant](http://vagrantup.com) and
[Puppet](http://puppetlabs.com) to install a complete Mozilla l10n
automation environment in a local [VirtualBox](http://virtualbox.org) VM.

1. Install the latest Virtualbox from http://www.virtualbox.org/ 
2. Install the latest Vagrant from http://vagrantup.com/
3. git clone [master-ball](https://github.com/pike/slave-ball), [slave-ball](https://github.com/pike/slave-ball),
   [a10n](https://github.com/pike/a10n) and [elmo](https://github.com/mozilla/elmo)
4. build VM and provision with puppet:

```
vagrant up
```

Your VM should now be up and running on IP 10.11.12.13

Here are some common vagrant operations:

SSH into your VM (l10n automation is shared to /src/l10n):

```
vagrant ssh
```

Re-run puppet

```
vagrant provision
```

Reboot VM and re-run puppet

```
vagrant reload
```

Destroy VM and rebuild from scratch

```
vagrant destroy 
vagrant up
```
