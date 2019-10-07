echo '* Installing PHP developments tools..';

# PHP package manager
brew install composer
brew upgrade composer

# Install mysql
brew install mysql mariadb

# Install apache - nano /etc/apache2/httpd.conf
brew install httpd

# Install ngnix
brew install nginx

# Install Local by Flywheel
brew install local

# Install WordPress command tools
brew install wp-cli wpscan

# Web interface for MySQL and MariaDB
brew install phpmyadmin

# Install Sequel Pro - database management application
brew cask install sequel-pro

# Install PHP IDE
brew cask install phpstorm
