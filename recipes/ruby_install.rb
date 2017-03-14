dev_box_user = node['dev_box']['user']

include_recipe 'ruby_install::default'

ruby_install_ruby 'ruby 2.4' do
  ruby 'ruby 2.4'
  user dev_box_user
  group dev_box_user
  environment ({ 'HOME' => "/home/#{dev_box_user}", 'USER' => dev_box_user })
  gems [{ name: 'bundler' }, { name: 'rake' }]
end

