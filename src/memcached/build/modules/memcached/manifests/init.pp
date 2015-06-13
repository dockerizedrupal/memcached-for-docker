class memcached {
  require memcached::packages

  file { '/tmp/memcached-1.4.21.tar.gz':
    ensure => present,
    source => 'puppet:///modules/memcached/tmp/memcached-1.4.21.tar.gz'
  }

  bash_exec { 'cd /tmp && tar xzf memcached-1.4.21.tar.gz':
    require => File['/tmp/memcached-1.4.21.tar.gz']
  }

  bash_exec { 'cd /tmp/memcached-1.4.21 && ./configure':
    timeout => 0,
    require => Bash_exec['cd /tmp && tar xzf memcached-1.4.21.tar.gz']
  }

  bash_exec { 'cd /tmp/memcached-1.4.21 && make':
    timeout => 0,
    require => Bash_exec['cd /tmp/memcached-1.4.21 && ./configure']
  }

  bash_exec { 'cd /tmp/memcached-1.4.21 && make install':
    timeout => 0,
    require => Bash_exec['cd /tmp/memcached-1.4.21 && make']
  }
}
