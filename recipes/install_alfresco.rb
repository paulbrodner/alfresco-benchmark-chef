#
# Cookbook Name:: alfresco-benchmark-chef
# Recipe:: install_alfresco
#
# Copyright 2015, Paul Brodner
#
#

unattended = %Q{
#{node[:alfresco_installer][:binary]} --mode unattended
--alfresco_admin_password #{node[:alfresco_installer][:password]}
--enable-components #{node[:alfresco_installer][:enable_components]}
#{node[:alfresco_installer][:disable_components].empty? ? "" : " --disable-components #{node[:alfresco_installer][:disable_components]}" }
--jdbc_username #{node[:alfresco_installer][:jdbc_username]}
--jdbc_password #{node[:alfresco_installer][:jdbc_password]}
--jdbc_driver '#{node[:alfresco_installer][:jdbc_driver]}'
--jdbc_url '#{node[:alfresco_installer][:jdbc_url]}'
--baseunixservice_install_as_service #{node[:alfresco_installer][:install_as_service]}
--prefix #{node[:alfresco_installer][:destination]}}

# create directory for this install
directory node[:alfresco_installer][:destination] do
  mode "0775"
  action :create
end

# mark the binary as executable
bash 'mark build as executable' do
  code "chmod +x #{node[:alfresco_installer][:binary]}"
end

# execute the install of alfresco, unattended
execute "Install alfresco" do
  command unattended.gsub("\n", " ")
  creates "#{node[:alfresco_installer][:destination]}/alfresco.sh"
end



