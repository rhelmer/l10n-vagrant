Vagrant VM for l10n automation
============
This project will use [Vagrant](http://vagrantup.com) and
[Puppet](http://puppetlabs.com) to install a complete Mozilla l10n
automation environment in a local [VirtualBox](http://virtualbox.org) VM.

1. Install the latest Virtualbox from http://www.virtualbox.org/ 
2. Install the latest Vagrant from http://vagrantup.com/
3. git clone [master-ball](https://github.com/pike/master-ball), [slave-ball](https://github.com/pike/slave-ball),
   [a10n](https://github.com/pike/a10n) and [elmo](https://github.com/mozilla/elmo)
4. build VM and provision with puppet:

```
vagrant up
```

Your VM should now be up and running on IP 10.11.12.13

You'll need to SSH into your VM and follow the setup instructions for the various l10n automation repos - 

```
vagrant ssh
```

You should find the repos shared with your host in ```/src/l10n``` inside the VM.
