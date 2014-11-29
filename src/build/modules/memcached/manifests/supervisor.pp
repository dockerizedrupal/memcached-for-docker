class memcached::supervisor {
  file { '/etc/supervisor/conf.d/memcached.conf':
    ensure => present,
    source => 'puppet:///modules/memcached/etc/supervisor/conf.d/memcached.conf',
    mode => 644
  }
}
