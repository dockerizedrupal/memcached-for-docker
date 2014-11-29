#!/usr/bin/env bash

if [ -z "${CACHESIZE}" ]; then
  CACHESIZE="64"
fi

export FACTER_CACHESIZE="${CACHESIZE}"

puppet apply --modulepath=/src/run/modules /src/run/run.pp

/usr/bin/supervisord
