# alfresco settings
default[:alfresco_installer][:edition]            = "Enterprise"
default[:alfresco_installer][:version]            = "4.2.0"
default[:alfresco_installer][:build]              = "build-00030"
default[:alfresco_installer][:location]           = "/software"

default[:alfresco_installer][:password]           = "admin"
default[:alfresco_installer][:enable_components]  = "javaalfresco,alfrescosharepoint,alfrescowcmqs,libreofficecomponent"


#default[:alfresco_installer][:jdbc_driver]       = "com.mysql.jdbc.Driver"
default[:alfresco_installer][:disable_components] = "" #postgres  --add postgress if mysql is used
default[:alfresco_installer][:jdbc_driver]        = "org.postgresql.Driver"

#default[:alfresco_installer][:jdbc_url]          = "jdbc:mysql://localhost/dbname?useUnicode=yes&characterEncoding=UTF-8"
default[:alfresco_installer][:jdbc_url]           = "jdbc:postgresql://localhost/dbname?useUnicode=yes&characterEncoding=UTF-8"
default[:alfresco_installer][:jdbc_database]      = "alfresco"
default[:alfresco_installer][:jdbc_username]      = "alfresco"
default[:alfresco_installer][:jdbc_password]      = "alfresco"
default[:alfresco_installer][:install_as_service] = "0" #1 for yes

#
# dynamic computed - do not touch the settings bellow this line
#
default[:alfresco_installer][:binary_name]        = "alfresco-#{default[:alfresco_installer][:edition].downcase}-#{default[:alfresco_installer][:version]}-installer-linux-x64.bin"
default[:alfresco_installer][:major_version]      = default[:alfresco_installer][:version].split(".")[0] + "." + default[:alfresco_installer][:version].split(".")[1]
default[:alfresco_installer][:bamboo_path]        = "https://bamboo.alfresco.com/qa/#{default[:alfresco_installer][:edition]}-#{default[:alfresco_installer][:major_version]}/#{default[:alfresco_installer][:version]}/#{default[:alfresco_installer][:build]}/ALL/"
default[:alfresco_installer][:destination]        = default[:benchmark][:home] + "/alfresco-#{default[:alfresco_installer][:version]}-#{default[:alfresco_installer][:build]}"
default[:alfresco_installer][:binary]             = File.join(default[:alfresco_installer][:location],default[:alfresco_installer][:binary_name])