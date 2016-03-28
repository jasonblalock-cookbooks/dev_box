include_recipe 'nvm::default'

nvm_install 'node' do
  user 'jason'
end
