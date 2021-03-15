directory '/etc/apache2/sites-available/' do
  owner 'root'
  group 'root'
  mode '755'
  recursive true
  action :create
end

file '/etc/apache2/sites-available/wordpress.conf' do
  owner 'root'
  group 'root'
  mode '644'
  content 'Alias /blog /usr/share/wordpress
<Directory /usr/share/wordpress>
    Options FollowSymLinks
    AllowOverride Limit Options FileInfo
    DirectoryIndex index.php
    Order allow,deny
    Allow from all
</Directory>
<Directory /usr/share/wordpress/wp-content>
    Options FollowSymLinks
    Order allow,deny
    Allow from all
</Directory>'
end
