# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos-64-x64-vbox4210.box"
  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-64-x64-vbox4210.box"

  config.vm.synced_folder "../a10n", "/src/l10n/a10n", :nfs => false
  config.vm.synced_folder "../elmo", "/src/l10n/elmo", :nfs => false
  config.vm.synced_folder "../master-ball", "/src/l10n/master-ball",
    :nfs => false
  config.vm.synced_folder "../slave-ball", "/src/l10n/slave-ball",
    :nfs => false

  config.vm.network "private_network", ip:"10.11.12.13"
  config.vm.provision :shell, inline: "if [ ! $(grep single-request-reopen /etc/sysconfig/network) ]; then echo RES_OPTIONS=single-request-reopen >> /etc/sysconfig/network && service network restart; fi"

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file  = "vagrant.pp"
  end
end
