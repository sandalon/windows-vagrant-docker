# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

#CLOUD_CONFIG_PATH = "./user-data"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/wily64"
  config.vm.synced_folder "../kristinandcorey.com", "/tmp/project", type: "rsync", rsync__exclude: ".git/"
  config.vm.network :private_network, ip: "192.168.30.2"
  #config.vm.network :forwarded_port, :host => 8000, :guest => 8000
  #config.vm.network :forwarded_port, :host => 9160, :guest => 9160
  #config.vm.network :forwarded_port, :host => 9042, :guest => 9042
  #config.vm.network :forwarded_port, :host => 80, :guest => 80
end