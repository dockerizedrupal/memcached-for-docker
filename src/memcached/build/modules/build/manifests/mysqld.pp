class run::memcached {
  require run::memcached::packages

  file { '/tmp/memcached-1.4.24.tar.gz':
    ensure => present,
    source => 'puppet:///modules/run/tmp/memcached-1.4.24.tar.gz'
  }

  bash_exec { 'cd /tmp && tar xzf memcached-1.4.24.tar.gz':
    require => File['/tmp/memcached-1.4.24.tar.gz']
  }

  bash_exec { 'cd /tmp/memcached-1.4.24 && ./configure':
    timeout => 0,
    require => Bash_exec['cd /tmp && tar xzf memcached-1.4.24.tar.gz']
  }

  bash_exec { 'cd /tmp/memcached-1.4.24 && make':
    timeout => 0,
    require => Bash_exec['cd /tmp/memcached-1.4.24 && ./configure']
  }

  bash_exec { 'cd /tmp/memcached-1.4.24 && make install':
    timeout => 0,
    require => Bash_exec['cd /tmp/memcached-1.4.24 && make']
  }
}
