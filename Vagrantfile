# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # \\ Common Settings

  # specify box
  # config.vm.box = "hashicorp/precise32"
  config.vm.box = "ubuntu/trusty32"
  # specify provision script
  config.vm.provision :shell, :path => "vm_provision/provision-ubuntu-14.04.sh"
  # specify shared folder
  config.vm.synced_folder "app/", "/vagrant"
  # 1GB memory
  config.vm.provider "virtualbox" do |vb|
   vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  # \\ Unique Settings

  config.vm.define "master" do |master|
    master.vm.network "private_network", ip: "55.55.55.5"
  end

  # config.vm.define "slave1" do |s1|
  #   s1.vm.network "private_network", ip: "66.66.66.6"
  # end
  #
  # config.vm.define "slave2" do |s2|
  #   s2.vm.network "private_network", ip: "77.77.77.7"
  # end
  #
  # config.vm.define "slave3" do |s3|
  #   s3.vm.network "private_network", ip: "88.88.88.8"
  # end

end
