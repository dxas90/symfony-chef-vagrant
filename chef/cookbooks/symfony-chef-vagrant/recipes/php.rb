#                                                   
# Cookbook Name:: symfony-chef-vagrant
# Recipe:: php
#

include_recipe 'php'

#php5-fpm conf  
template "/etc/php5/fpm/pool.d/www.conf" do
    source "www.conf.erb" 
    owner "root"
    group "root" 
    mode 0644 
    notifies :run, 'execute[restart_php5-fpm]'
end

execute 'restart_php5-fpm' do
  command "service php5-fpm restart"
  action :nothing                                                                                                                                                                                                                   
end
