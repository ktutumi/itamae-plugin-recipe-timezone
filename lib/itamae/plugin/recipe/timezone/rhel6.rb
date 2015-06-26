#
# Cookbook Name:: timezone
# Recipe:: rhel6
#

template '/etc/sysconfig/clock' do
  owner 'root'
  group 'root'
  mode '0600'
  notifies :run, 'execute[tzdata-update]'
end

execute 'tzdata-update' do
  command 'tzdata-update'
  action :nothing
end

