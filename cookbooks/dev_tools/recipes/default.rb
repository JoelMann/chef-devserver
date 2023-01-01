#
# Cookbook:: my_users
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.

package 'git'
package 'python3'
package 'tar'

cron 'run_chef' do
  minute '5'
  command 'chef-solo -c $SOLO_FOLDER/chef-devserver/solo.rb -j $SOLO_FOLDER/chef-devserver/node.json'
  mailto 'jmann.creston@gmail.com'
  action :create
end
