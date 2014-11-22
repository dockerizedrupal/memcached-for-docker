class memcached {
  #require memcached::packages
  #require memcached::supervisor

  file { '/tmp/memcached-1.4.21.tar.gz':
    ensure => present,
    source => 'puppet:///modules/memcached/tmp/memcached-1.4.21.tar.gz'
  }

  exec { 'tar xzf memcached-1.4.21.tar.gz':
    cwd => '/tmp',
    path => ['/bin'],
    require => File['/tmp/memcached-1.4.21.tar.gz']
  }

  exec { '/bin/bash -c "cd /tmp/memcached-1.4.21 && ./configure --prefix=/usr/local/memcached"':
    require => Exec['tar xzf memcached-1.4.21.tar.gz']
  }

  exec { '/bin/bash -c "cd /tmp/memcached-1.4.21 && make"':
    require => Exec['/bin/bash -c "cd /tmp/memcached-1.4.21 && ./configure --prefix=/usr/local/memcached"']
  }

  exec { '/bin/bash -c "cd /tmp/memcached-1.4.21 && make install"':
    require => Exec['/bin/bash -c "cd /tmp/memcached-1.4.21 && make"']
  }
}
