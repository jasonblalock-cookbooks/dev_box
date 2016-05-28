node.default['chruby_install']['users'] = { 'jason' => { auto: true } }
include_recipe 'chruby_install::user'
