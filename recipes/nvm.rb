include_recipe 'nvm::default'

nvm_install 'node' do
  user node['dev_box']['user']
end
