# puppet_flask_install.pp

# Install pip3 package
package { 'python3-pip':
  ensure => installed,
}

# Use pip3 to install Flask and Werkzeug
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip'],
}

package { 'werkzeug':
  ensure   => '2.0.2',
  provider => 'pip3',
  require  => Package['python3-pip'],
}
