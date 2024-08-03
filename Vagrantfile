# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
 config.vm.box = "jammy"
 config.vm.provider "virtualbox" do |v|
   v.memory = 1024
   v.cpus = 1
 end


 config.vm.define "nfss" do |nfss|
   nfss.vm.network "private_network", ip: "192.168.56.10"
#, virtualbox__intnet: "vboxnet0"
   nfss.vm.hostname = "nfss"
   nfss.vm.provision "shell", inline: <<-SHELL
     apt install nfs-kernel-server -y
   SHELL
   nfss.vm.provision "shell", path: "nfss_script.sh"
 end


 config.vm.define "nfsc" do |nfsc|
   nfsc.vm.network "private_network", ip: "192.168.56.11"
#, virtualbox__intnet: "vboxnet0"
   nfsc.vm.hostname = "nfsc"
   nfsc.vm.provision "shell", inline: <<-SHELL
     apt install nfs-common -y
   SHELL
   nfsc.vm.provision "shell", path: "nfsc_script.sh"
 end


end
