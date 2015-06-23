execute 'apt-get update' do
  command 'sudo apt-get update -y'
end

execute 'apt-get upgrade' do
  command 'sudo apt-get upgrade -y'

end
