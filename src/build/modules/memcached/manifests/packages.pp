class memcached::packages {
  exec { 'apt-get update':
    path => ['/usr/bin']
  }

  package {[
      'build-essential',
      'libevent-dev'
    ]:
    ensure => present,
    require => Exec['apt-get update']
  }
}
