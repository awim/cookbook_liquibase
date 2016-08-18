#
# Cookbook Name:: liquibase
# Recipe:: set_properties
#
# Copyright (c) 2016 awim/mtaqwim, All Rights Reserved.

template "#{node['liquibase']['path']}/liquibase.properties" do
  source    'liquibase.properties.erb'
  mode      '0655'
  owner     node['user']
  group     node['group']
  variables ({
                :jdbc_driver => node['liquibase']['db']['driver'],
                :jdbc_lib => node['liquibase']['db']['lib'],
                :jdbc_target => node['liquibase']['db']['url'],
                :db_user => node['liquibase']['db']['user'],
                :db_password => node['liquibase']['db']['password'],
                :changelog_file_path => node['liquibase']['db']['changeLogFile']
            })
  action    :create
end