#
# Cookbook:: my_users
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.

users_from_databag = search('users', '*:*')

users_manage 'dev' do
  group_id 1337
  action [:create]
  users users_from_databag
end