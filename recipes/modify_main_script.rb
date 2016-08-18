#
# Cookbook Name:: liquibase
# Recipe:: modify_main_script
#
# Copyright (c) 2016 awim/mtaqwim, All Rights Reserved.

template "#{node['liquibase']['path']}/liquibase" do
  source    'liquibase.erb'
  mode      '0755'
  owner     node['user']
  group     node['group']
  action    :create
end