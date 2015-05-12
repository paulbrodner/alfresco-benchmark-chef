#
# Cookbook Name:: alfresco-benchmark-chef
# Recipe:: apt
#
# Copyright 2015, Paul Brodner
#
#

execute "apt-get update" do
  command "sudo apt-get update"
end
