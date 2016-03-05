#
# Cookbook Name:: dev_box
# Recipe:: main_user
#
# Copyright (c) 2016 Jason Blalock, All Rights Reserved.

include_recipe 'chef-vault'

vault = chef_vault_item('users', 'jason')

group vault['id']

user vault['id'] do
  group vault['id']
  home "/home/#{vault['id']}"
  shell vault['shell']
  password vault['password']
end

group 'sudo' do
  action :modify
  members "#{vault['id']}"
  append true
end
