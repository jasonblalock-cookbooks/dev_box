#
# Cookbook Name:: dev_box
# Recipe:: default
#
# Copyright (c) 2016 Jason Blalock, All Rights Reserved.

include_recipe 'apt::default'
#include_recipe 'dev_box::main_user'
include_recipe 'chruby_install::default'
include_recipe 'dev_box::ruby_install'
include_recipe 'dev_box::docker'
include_recipe 'git::default'
include_recipe 'dev_box::nvm'
include_recipe 'sublime_text::default'
include_recipe 'vim::default'
