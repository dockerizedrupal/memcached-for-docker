class memcached::supervisor {
  file { '/etc/supervisor/conf.d/memcached.conf':
    ensure => present,
    content => template('memcached/memcached.conf.erb'),
    mode => 644
  }
}
