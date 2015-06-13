#!/usr/bin/env bash

puppet apply --modulepath=/src/memcached/run/modules /src/memcached/run/run.pp

supervisord -c /etc/supervisor/supervisord.conf
