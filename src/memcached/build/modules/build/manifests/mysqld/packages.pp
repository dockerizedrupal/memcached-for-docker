class build::memcached::packages {
  package {[
      'build-essential',
      'libevent-dev'
    ]:
    ensure => present
  }
}
