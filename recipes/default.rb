#
# Cookbook Name:: dev_box
# Recipe:: default
#
# Copyright (c) 2016 Jason Blalock, All Rights Reserved.

include_recipe 'dev_box::aux_packages'
include_recipe 'dev_box::main_user'
include_recipe 'nodejs::default'
