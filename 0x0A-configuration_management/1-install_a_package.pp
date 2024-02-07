# puppet_flask_install.pp

# Install pip3 package
package { 'python3-pip':
  ensure => installed,
}

# Use pip3 to install Flask
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip'],
}
