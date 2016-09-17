class build::memcached {
  require build::memcached::packages

  file { '/tmp/memcached-1.4.31.tar.gz':
    ensure => present,
    source => 'puppet:///modules/build/tmp/memcached-1.4.31.tar.gz'
  }

  bash_exec { 'cd /tmp && tar xf memcached-1.4.31.tar.gz':
    require => File['/tmp/memcached-1.4.31.tar.gz']
  }

  bash_exec { 'cd /tmp/memcached-1.4.31 && ./configure':
    timeout => 0,
    require => Bash_exec['cd /tmp && tar xf memcached-1.4.31.tar.gz']
  }

  bash_exec { 'cd /tmp/memcached-1.4.31 && make':
    timeout => 0,
    require => Bash_exec['cd /tmp/memcached-1.4.31 && ./configure']
  }

  bash_exec { 'cd /tmp/memcached-1.4.31 && make install':
    timeout => 0,
    require => Bash_exec['cd /tmp/memcached-1.4.31 && make']
  }
}
