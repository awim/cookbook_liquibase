#
# Cookbook Name:: liquibase
# Recipe:: default
#
# Copyright (c) 2016 awim/mtaqwim, All Rights Reserved.

include_recipe 'liquibase::install'
include_recipe 'liquibase::import_lib'
include_recipe 'liquibase::set_properties'
include_recipe 'liquibase::modify_main_script'