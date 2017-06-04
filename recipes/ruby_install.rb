#
# Cookbook:: dev_box
# Recipe:: ruby_install
#
# The MIT License (MIT)
#
# Copyright:: 2017, Jason Blalock
#

dev_box_user = node['dev_box']['user']

ruby_install_ruby 'ruby 2.4' do
  ruby 'ruby 2.4'
  user dev_box_user
  group dev_box_user
  environment ({ 'HOME' => "/home/#{dev_box_user}", 'USER' => dev_box_user })
  gems [{ name: 'bundler' }, { name: 'rake' }]
end
