# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "chef/ubuntu-14.04-i386"

  config.vm.network "private_network", type: "dhcp"
  config.vm.network "forwarded_port", guest: 8080, host: 9090

  config.vm.provision "shell", path: "provision.sh"

end
