#
# Cookbook Name:: dev_box
# Attributes:: default
#
# Copyright (C) 2016 Jason Blalock
#
# MIT License
#

distro_name = case node['platform_version']
when '14.04'
  'trusty'
when '16.04'
  'xenial'
end

default['dev_box']['user'] = 'jason'
default['dev_box']['platform']['distro'] = distro_name
