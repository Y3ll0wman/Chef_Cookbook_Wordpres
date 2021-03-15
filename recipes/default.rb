#
# Cookbook:: wordpress_vk
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

include_recipe "wordpress_vk::packages"
include_recipe "wordpress_vk::virtualhost_conf"
include_recipe "wordpress_vk::wp_conf"
include_recipe "wordpress_vk::mysql_conf"
