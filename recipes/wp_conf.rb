directory '/etc/wordpress/' do
  owner 'root'
  group 'root'
  mode '755'
  recursive true
  action :create
end

file '/etc/wordpress/config-localhost.php' do
  owner 'root'
  group 'root'
  mode '644'
  content '<?php
define(\'DB_NAME\', \'wordpress_db\');
define(\'DB_USER\', \'wordpress_db\');
define(\'DB_PASSWORD\', \'2fo02ss\');
define(\'DB_HOST\', \'localhost\');
define(\'DB_COLLATE\', \'utf8_general_ci\');
define(\'WP_CONTENT_DIR\', \'/usr/share/wordpress/wp-content\');
?>'
end
