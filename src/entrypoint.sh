#!/usr/bin/env bash

case "${1}" in
  build)
    /bin/su - root -mc "apt-get update && /src/memcached/build.sh && /src/memcached/clean.sh"
    ;;
  run)
    /bin/su - root -mc "source /src/memcached/variables.sh && /src/memcached/run.sh"
    ;;
esac
