# -*- mode: rub y -*-
# vi: set ft=ruby :

# vagrant plugin install vagrant-gatling-rsync
# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

#CLOUD_CONFIG_PATH = "./user-data"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/wily64"
  config.vm.synced_folder "../kristinandcorey.com", "/tmp/project", type: "rsync", rsync__exclude: [".git/", ".bundle/"]
  config.gatling.rsync_on_startup = true
  config.vm.network :private_network, ip: "192.168.30.2"
  config.vm.provision "shell", path: "https://raw.githubusercontent.com/sandalon/windows-vagrant-docker/master/provision/rails.sh"
  config.vm.network :forwarded_port, :host => 3000, :guest => 3000, auto_correct: true
  #config.vm.network :forwarded_port, :host => 9160, :guest => 9160
  #config.vm.network :forwarded_port, :host => 9042, :guest => 9042
end