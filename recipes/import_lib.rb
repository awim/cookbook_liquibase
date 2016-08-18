#
# Cookbook Name:: liquibase
# Recipe:: import_jdbc
#
# Copyright (c) 2016 awim/mtaqwim, All Rights Reserved.


cookbook_file "#{node['liquibase']['path']}/lib/#{node['liquibase']['db']['lib']}" do
  source node['liquibase']['db']['lib']
end