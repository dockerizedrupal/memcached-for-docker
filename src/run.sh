#!/usr/bin/env bash

if [ -z "${MEMORY}" ]; then
  MEMORY="64"
fi

export FACTER_MEMORY="${MEMORY}"

puppet apply --modulepath=/src/run/modules /src/run/run.pp

/usr/bin/supervisord
