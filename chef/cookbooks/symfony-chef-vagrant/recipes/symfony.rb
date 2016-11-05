#
# Cookbook Name:: symfony-chef-vagrant
# Recipe:: symfony
#

include_recipe 'composer'

#install vendors
ENV['SYMFONY_ENV'] = 'prod' # Avoid "class not found" error: http://symfony.com/doc/current/deployment.html#c-install-update-your-vendors
composer_project node[:"symfony-chef-vagrant"][:projectdir] do
    dev false
    quiet true
    prefer_dist false
    action :install
end
