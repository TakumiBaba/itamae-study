template "sshd_config" do
  path "/etc/ssh/sshd_config"
  source "templates/sshd_config"
  mode 600
end

execute "ufw setup" do
  command "sudo ufw enable"
  command "sudo ufw default DENY"
  command "sudo ufw allow 80"
  command "sudo ufw allow 12170"
  command "sudo ufw allow 443"
end

service "sshd" do
  action :restart
  subscribes :restart, "template[sshd_config]"
end
