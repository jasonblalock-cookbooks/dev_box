#
# Cookbook Name:: .
# Recipe:: docker
#
# Copyright (c) 2016 Jason Blalock, All Rights Reserved.

include_recipe 'apt'

package 'ca-certificates'
package 'apt-transport-https'

node.default['apt-docker']['repos']['docker-main']['deb-src'] = true
include_recipe 'apt-docker'

package "linux-image-extra-#{`uname -r`.strip}"
package 'apparmor'

docker_service 'default' do
  version '1.10.2'
  install_method 'package'
  action [:create, :start]
end
