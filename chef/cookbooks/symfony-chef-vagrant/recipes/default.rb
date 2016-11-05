#
# Cookbook Name:: symfony-chef-vagrant
# Recipe:: default
#

include_recipe 'timezone-ii'                                                                                                                                                                                                           
include_recipe 'chef-client::delete_validation'
include_recipe 'chef-client::config'
include_recipe 'chef-client'
include_recipe 'apt'
apt_package "ntp"
