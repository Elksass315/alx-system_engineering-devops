#fix bad "phpp" and then automate it using Puppet

exec{'fix-wordpress':
  command => 'sed -i s/phpp/g /var/www/html/wp-settings.php',
  path => '/usr/local/bin/:/bin/'
}
