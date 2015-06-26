#
# Cookbook Name:: timezone
# Recipe:: rhel7
#

execute 'timedatectl' do
  command "timedatectl set-timezone #{node[:tz]}"
  not_if "timedatectl | grep Timezone | grep #{node[:tz]}"
end

