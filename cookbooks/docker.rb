execute "dokcer install" do
  command "wget -qO- https://get.docker.com/ | sh"
end


group "docker" do
  user "bb"

end

package "dokku-alt-beta"
