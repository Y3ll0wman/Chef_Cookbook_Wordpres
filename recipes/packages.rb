#apt_package %(wordpress php libapache2-mod-php mysql-server php-mysql) do
#  action :install
#end

apt_update 'update'

apt_package 'wordpress' do
  action :install
end

apt_package 'php' do
  action :install
end

apt_package 'libapache2-mod-php' do
  action :install
end

apt_package 'mysql-server' do
  action :install
end

apt_package 'php-mysql' do
  action :install
end
