#!/usr/bin/env bash

if [ -z "${TIMEZONE}" ]; then
  TIMEZONE="Etc/UTC"
fi

export FACTER_TIMEZONE="${TIMEZONE}"

if [ -z "${CACHESIZE}" ]; then
  CACHESIZE="512"
fi

export FACTER_CACHESIZE="${CACHESIZE}"

if [ -z "${MAX_CONNECTIONS}" ]; then
  MAX_CONNECTIONS="1024"
fi

export FACTER_MAX_CONNECTIONS="${MAX_CONNECTIONS}"

if [ -z "${THREADS}" ]; then
  THREADS="4"
fi

export FACTER_THREADS="${THREADS}"

if [ -z "${MAX_ITEM_SIZE}" ]; then
  MAX_ITEM_SIZE="16m"
fi

export FACTER_MAX_ITEM_SIZE="${MAX_ITEM_SIZE}"

if [ -z "${VERBOSITY}" ]; then
  VERBOSITY="v"
fi

export FACTER_VERBOSITY="${VERBOSITY}"
