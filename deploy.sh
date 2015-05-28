#!/usr/bin/env bash

#
# This file is part of the fabschurt/scripts package.
#
# (c) 2015 Fabien Schurter <dev@fabschurt.net>
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author  Fabien Schurter <dev@fabschurt.net>
# @license MIT
#

# Ask confirmation
echo 'All the scripts in the bin/ directory will now be copied into /usr/local/bin.'
read -r -p 'Are you sure you want to continue? (type [y]es or [n]o) ' response
if [[ ! $response =~ ^(y|yes)$ ]]; then
  exit 0
fi

# Run
set -e
cp -aXv $(dirname $0)/bin/* /usr/local/bin
