#
# Cookbook Name:: alfresco-benchmark-chef
# Recipe:: apt
#
# Copyright 2015, Paul Brodner
#

bash 'restart alfresco' do
  code "#{node[:alfresco_installer][:destination]}/alfresco.sh restart"
end
