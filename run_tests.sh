#!/bin/bash

set -e

cd ../service-frontend
./create-user-for-integration-tests.sh > /vagrant/logs/acceptance-tests.log 2>&1
cd ../casework-frontend
./create-user-for-integration-tests.sh  >> /vagrant/logs/acceptance-tests.log 2>&1

cd ../acceptance-tests


bundle install

if [ -z "$1" ]
  then
    cucumber --tags ~@wip --tags ~@removed
else
    cucumber -r features $1
fi
