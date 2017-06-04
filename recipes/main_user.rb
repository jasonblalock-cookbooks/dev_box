#
# Cookbook:: dev_box
# Recipe:: main_user
#
# The MIT License (MIT)
#
# Copyright:: 2017, Jason Blalock
#

user 'jason' do
  manage_home true
  home "/home/jason"
  group 'jason'
  shell '/bin/bash'
  password '$1$2VKOVz/8$8Y2giiyR6mTPc4Grn3Nkx/'
  action :create
end

%w{adm cdrom sudo dip plugdev lpadmin sambashare}.each do |g|
  group g do
    action :modify
    members 'jason'
    append true
  end
end
