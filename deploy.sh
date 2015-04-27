#!/usr/bin/env bash

# Ask confirmation
echo 'All the scripts in the bin/ directory will now be copied into /usr/local/bin.'
read -r -p 'Are you sure you want to continue? (type [y]es or [n]o) ' response
if [[ ! $response =~ ^(y|yes)$ ]]; then
  exit 0
fi

# Run
cp -aXv $(dirname $0)/bin/* /usr/local/bin
