# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "base"
  config.vm.box_url = "http://files.piratenfraktion-berlin.de/devbox.box"

  # Boot with a GUI so you can see the screen. (Default is headless)
  # config.vm.boot_mode = :gui

  config.vm.network :hostonly, "192.168.23.100"

  # Forward a port from the guest to the host, which allows for outside
  # computers to access the VM, whereas host only networking does not.
  # config.vm.forward_port 80, 8080

  config.vm.share_folder "v-root", "/home/vagrant/config", "config", :nfs => true
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "provision/manifests"
    puppet.module_path = 'provision/modules'
  end
end
