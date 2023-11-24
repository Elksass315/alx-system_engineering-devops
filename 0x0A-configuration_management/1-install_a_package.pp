class flask {
  package { 'python3-pip':
    ensure => installed,
  }

  exec { 'install-flask':
    command     => '/usr/bin/pip3 install flask==2.1.0',
    require     => Package['python3-pip'],
    unless      => '/usr/bin/pip3 show flask | /bin/grep -q "Version: 2.1.0"',
  }
}

include flask
