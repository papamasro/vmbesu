# -*- mode: ruby -*-
# vi: set ft=ruby :

#Vagrant.require_plugin "vagrant-reload"

Vagrant.configure(2) do |config|

  # if Vagrant.has_plugin?("vagrant-proxyconf")
  #   config.proxy.http     = "http://proxy.ar.bsch:8080/"
  #   config.proxy.https    = "http://proxy.ar.bsch:8080/"
  #   config.proxy.no_proxy = "localhost,127.0.0.1,.example.com,docker,debian"
  # end
  
  config.vm.hostname = "hyperledger-vm"
  config.vm.box = "ubuntu/xenial64"
  
  config.vm.provider :virtualbox do |vb|
    vb.memory = "4096"
  end
  
    if (ARGV.include?("--provision"))
      puts "Provision Started!"
      config.vm.provision :shell, path: "scripts/autoInstall.sh", privileged: false 
  else
    puts "Started without provision!"
  end 

end
