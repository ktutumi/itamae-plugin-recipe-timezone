#
# Cookbook Name:: timezone
# Recipe:: default
#

node[:tz] ||= 'Asia/Tokyo'

require 'pp'
pp node[:platform_version][0]

if node[:platform_version][0] == '6'
  include_recipe 'timezone::rhel6'
else
  include_recipe 'timezone::rhel7'
end

