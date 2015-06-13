#!/usr/bin/env bash

puppet apply --modulepath=/src/memcached/build/modules /src/memcached/build/build.pp
