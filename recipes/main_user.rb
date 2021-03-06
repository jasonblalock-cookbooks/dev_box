#
# Cookbook Name:: dev_box
# Recipe:: main_user
#
# Copyright (c) 2016 Jason Blalock, All Rights Reserved.

include_recipe 'chef-vault'

vault = chef_vault_item('users', node['dev_box']['user'])
Chef::Log.debug("Trying to create user: #{vault['id']}")
group vault['id'] do
  action :create
end


user vault['id'] do
  supports :manage_home => true
  home "/home/#{vault['id']}"
  group vault['id']
  shell vault['shell']
  password vault['password']
  action :create
end

%w{adm cdrom sudo dip plugdev lpadmin sambashare}.each do |g|
  group g do
    action :modify
    members vault['id']
    append true
  end
end
