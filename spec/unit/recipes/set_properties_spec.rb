#
# Cookbook Name:: liquibase
# Spec:: default
#
# Copyright (c) 2016 awim/mtaqwim, All Rights Reserved.

require 'spec_helper'

describe 'liquibase::set_properties' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
