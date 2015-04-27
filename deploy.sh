#!/usr/bin/env bash

# Ask confirmation
echo 'All the scripts in the bin/ directory will now be copied into /usr/local/bin'\
' (this directory will be created if it does not exist).'
read -r -p 'Are you sure you want to continue? (type [y]es or [n]o) ' response
if [[ ! $response =~ ^(y|yes)$ ]]; then
  exit 0
fi

# Run
set -e
destination='/usr/local/bin'
if [[ ! -d $destination ]]; then
  mkdir -pv $destination
fi
cp -aXv $(dirname $0)/bin/* $destination
