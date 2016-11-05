name 'webserver'                
description "A role to configure our web servers"
run_list 'recipe[symfony-chef-vagrant::default]','recipe[symfony-chef-vagrant::apache]', 'recipe[symfony-chef-vagrant::php]', 'recipe[symfony-chef-vagrant::symfony]'
