bash 'extract_module' do
    code <<-EOH
    a2ensite wordpress
    a2enmod rewrite
    service apache2 reload
    mysql -e "CREATE DATABASE wordpress_db"
    mysql -e "CREATE USER 'wordpress_db'@'localhost' IDENTIFIED BY '2fo02ss'"
    mysql -e "GRANT ALL PRIVILEGES ON * . * TO 'wordpress_db'@'localhost'"
    service mysql start
  EOH
  end
