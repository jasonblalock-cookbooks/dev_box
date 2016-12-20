#
# Cookbook Name:: dev_box
# Recipe:: default
#
# Copyright (c) 2016 Jason Blalock, All Rights Reserved.

include_recipe 'apt::default'
#include_recipe 'dev_box::main_user'
include_recipe 'dev_box::chruby_install'
include_recipe 'dev_box::ruby_install'
#include_recipe 'docker::default'
include_recipe 'git::default'
include_recipe 'dev_box::nvm'
include_recipe 'sublime_text::default'
include_recipe 'vim::default'
include_recipe 'dev_box::zsh'
include_recipe 'dotfiles::default'
