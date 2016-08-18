#
# Cookbook Name:: liquibase
# Recipe:: install
#
# Copyright (c) 2016 awim/mtaqwim, All Rights Reserved.

upload_path = '/tmp/liquibase-3.5.1-bin.zip'

directory node['liquibase']['path'] do
  owner node['user']
  group node['group']
  mode '0755'
end

cookbook_file upload_path do
  source node['liquibase']['source']
  owner node['user']
  group node['group']
end

execute "unzip -o #{upload_path} -d #{node['liquibase']['path']} && rm -rf #{upload_path}" do
  live_stream true
  user node['user']
  group node['group']
end