# Policyfile.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name "dev_box"

# Where to find external cookbooks:
default_source :supermarket

default['chruby_install']['users'] = { 'jason' => { auto: true } }

# run_list: chef-client will run these recipes in the order specified.
run_list %w(
  dev_box::default
  chruby_install::user
  ruby_install::default dev_box::ruby_install
  docker_setup::default
  git_ppa::default
  nvm::default dev_box::nvm
  sublime_text::default
  vim::default
  zsh::default dev_box::zsh
  dotfiles::default
)

# Specify a custom source for a single cookbook:
cookbook "dev_box", path: "."
cookbook 'docker_setup', git: 'git@github.com:jasonblalock-cookbooks/docker_setup.git'
cookbook 'dotfiles', git: 'git@github.com:jasonblalock-cookbooks/dotfiles.git'
cookbook 'nvm', git: 'git@github.com:jasonblalock-cookbooks/nvm.git'
cookbook 'sublime_text', git: 'git@github.com:jasonblalock-cookbooks/sublime_text.git'
cookbook 'git_ppa', git: 'git@github.com:jasonblalock-cookbooks/git_ppa.git'
cookbook 'chruby_install', '~> 0.1.3', git: 'git@github.com:jasonblalock-cookbooks/chef_chruby_install.git'
cookbook 'ruby_install', '~> 0.1.0', git: 'git@github.com:jasonblalock-cookbooks/ruby_install.git'
cookbook 'zsh', '~> 2.0.0', git: 'git@github.com:jasonblalock-cookbooks/zsh.git'
