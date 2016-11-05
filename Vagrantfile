Vagrant.configure('2') do |config|                                                                                                                                                                          
  # berkshelf
  config.berkshelf.enabled = true 

  # chef version
  config.omnibus.chef_version = :latest

  # box
  config.vm.box = 'ubuntu/trusty64'
  config.vm.network :private_network, ip: "192.168.33.200"

  config.vm.provider :virtualbox do |vb| 
    vb.customize ["modifyvm", :id, "--memory", "2048"]
    vb.customize ["modifyvm", :id, "--cpus", "2"] 
  end  

  # network
  config.vm.network :forwarded_port, guest: 80, host: 8080 
  config.vm.network :forwarded_port, guest: 443, host: 8443 
  config.vm.network :forwarded_port, guest: 8000, host: 8000 

  ### Uncomment the following lines to use NFS: 
  config.vm.synced_folder ".", "/vagrant",
    id: "core",
    :nfs => true 
    #:mount_options => ['nolock,vers=3,udp,noatime']
  config.vm.network :private_network, ip: '192.168.50.4'


  # chef 
  chef_repo_path = "./chef"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path    = 'chef/cookbooks'
    chef.data_bags_path    = 'chef/data_bags'
    chef.environments_path = 'chef/environments'
    chef.roles_path        = 'chef/roles'

    chef.environment = 'vagrant'
    chef.run_list = [
      'role[webserver]',
    ]    
  end  
end
