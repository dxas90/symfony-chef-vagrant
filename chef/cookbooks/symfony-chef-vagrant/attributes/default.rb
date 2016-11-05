# symfony-chef-vagrant
default[:"symfony-chef-vagrant"][:docroot] = '/vagrant/web'
default[:"symfony-chef-vagrant"][:projectdir] = '/vagrant'

# timezone
override[:tz] = 'America/Los_Angeles'

# php
default[:php][:packages] << 'php5-curl'
default[:php][:packages] << 'php5-intl'
default[:php][:packages] << 'php5-mysql'
default[:php][:packages] << 'php5-sqlite'
default[:php][:packages] << 'php5-memcache'
default[:php][:packages] << 'php5-gd'
default[:php][:packages] << 'php5-imagick'
default[:php][:packages] << 'php5-fpm'

# mysql
mysql_root_password = 'symfony'
default[:mysql][:server_root_password] = mysql_root_password 
default[:mysql][:server_repl_password] = mysql_root_password 
default[:mysql][:server_debian_password] = mysql_root_password 
