#
# Cookbook Name:: node_upgrade
# Recipe:: default
#
Chef::Log.info "Installing appropriate version of Node"
  package "net-libs/nodejs" do
    version "0.10.28"
    action :upgrade
  end

  execute "select nodejs version" do
    command "eselect nodejs set 0.10.28"
    action :nothing
  end 
