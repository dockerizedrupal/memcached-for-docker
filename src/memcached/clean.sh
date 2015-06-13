#!/usr/bin/env bash

puppet apply --modulepath=/src/memcached/clean/modules /src/memcached/clean/clean.pp
