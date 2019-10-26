echo '* Installing PHP developments tools..';

# PHP package manager
brew install composer
brew upgrade composer

# Lets install deprecated version of PHP as well
brew tap exolnet/homebrew-deprecated
brew install php@5.6
brew install php@7.1
brew install php@7.2
brew install php@7.3

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

#
composer global require squizlabs/php_codesniffer
