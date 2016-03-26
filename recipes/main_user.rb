#
# Cookbook Name:: dev_box
# Recipe:: main_user
#
# Copyright (c) 2016 Jason Blalock, All Rights Reserved.

include_recipe 'chef-vault'

vault = chef_vault_item('users', 'jason')

group vault['id']

user vault['id'] do
  supports :manage_home => true
  home "/home/#{vault['id']}"
  group vault['id']
  shell vault['shell']
  password vault['password']
end

group 'sudo' do
  action :modify
  members vault['id']
  append true
end
