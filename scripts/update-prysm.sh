#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root!" 
   exit 1
fi

echo "Enter version (i.e 1.3.3)"
read VER

if [ -z "$VER" ]
then
	echo "Wrong version, exiting!"
	exit 1
fi

cd ~/Downloads
BEACON=https://github.com/prysmaticlabs/prysm/releases/download/v$VER/beacon-chain-v$VER-linux-amd64
curl -LO $BEACON
VALIDATOR=https://github.com/prysmaticlabs/prysm/releases/download/v$VER/validator-v$VER-linux-amd64
curl -LO $VALIDATOR

systemctl stop prysmbeacon.service
systemctl stop prysmvalidator.service

mv beacon-chain-v$VER-linux-amd64 beacon-chain
mv validator-v$VER-linux-amd64 validator

mv beacon-chain /usr/local/bin
mv validator /usr/local/bin

systemctl start prysmbeacon.service
systemctl start prysmvalidator.service

systemctl is-active --quiet prysmbeacon.service && echo "Beacon updated and running"
systemctl is-active --quiet prysmvalidator.service && echo "Validator updated and running"
