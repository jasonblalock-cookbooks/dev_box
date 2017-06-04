#
# Cookbook:: dev_box
# Recipe:: nvm
#
# The MIT License (MIT)
#
# Copyright:: 2017, Jason Blalock
#

nvm_install 'node' do
  user node['dev_box']['user']
end
