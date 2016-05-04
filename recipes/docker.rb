node.default['docker']['platform']['distro'] = "ubuntu-#{node['dev_box']['platform']['distro']}"

include_recipe 'docker::default'
