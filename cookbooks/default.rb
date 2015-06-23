# common command

USER_NAME = "bb"
SSH_KEY   = File.read("~/.ssh/id_rsa.pub")

user USERNAME do
  action :create
end

directory "/home/#{USERNAME}/.ssh" do
  owner USERNAME
  group USERNAME
  mode 700
end

file "/home/#{USERNAME}/.ssh/authorized_keys" do
  content SSH_KEY
  owner USERNAME
  group USERNAME
  mode 600
end

template "/etc/sudoers" do
  source "templates/sudoers"
  mode 440
  owner "root"
  group "root"
end
