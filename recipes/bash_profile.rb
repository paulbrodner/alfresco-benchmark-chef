#
# Cookbook Name:: alfresco-benchmark-chef
# Recipe:: apt
#
# Copyright 2015, Paul Brodner
#
#
# Update the .bash_profile with misc settings (environment variables, coloring, etc.)
#

bash_profile = "#{node[:benchmark][:home]}/.bash_profile"

template bash_profile do
  source '.bash_profile.erb'
  mode 00644
  action :create
end

bash 'update terminal' do
  code "source #{bash_profile}"
end
