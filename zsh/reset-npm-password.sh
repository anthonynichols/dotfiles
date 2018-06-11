#!/usr/bin/env bash
# regenerates .npmrc whenever you reset your LDAP password.
# make this file executable, run it, and enter LDAP pass when prompted.
set -e
read -sp "Enter your LDAP password: " pass
NPMRC=~/.npmrc
if [ -f $NPMRC ]; then
  rm $NPMRC
fi
touch $NPMRC
npm config set registry https://npm.homeawaycorp.com/artifactory/api/npm/npm
curl -s -u $(whoami):$pass "https://npm.homeawaycorp.com/artifactory/api/npm/auth" >> $NPMRC
curl -s -u $(whoami):$pass "https://npm.homeawaycorp.com/artifactory/api/npm/npm-local/auth/homeaway" >> $NPMRC
echo
echo Done!