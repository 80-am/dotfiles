#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root!" 
   exit 1
fi

cd ~/Downloads
LATEST=`curl -s https://api.github.com/repos/prysmaticlabs/prysm/releases | grep tag_name | head -n 1 | cut -d '"' -f 4`
echo "Downloading" $LATEST

BEACON=https://github.com/prysmaticlabs/prysm/releases/download/$LATEST/beacon-chain-$LATEST-linux-amd64
curl -LO $BEACON
VALIDATOR=https://github.com/prysmaticlabs/prysm/releases/download/$LATEST/validator-$LATEST-linux-amd64
curl -LO $VALIDATOR

systemctl stop prysmbeacon.service
systemctl stop prysmvalidator.service

mv beacon-chain-$LATEST-linux-amd64 beacon-chain
mv validator-$LATEST-linux-amd64 validator

chmod +x beacon-chain
chmod +x validator

mv beacon-chain /usr/local/bin
mv validator /usr/local/bin

systemctl start prysmbeacon.service
systemctl start prysmvalidator.service

systemctl is-active --quiet prysmbeacon.service && echo "Beacon updated and running"
systemctl is-active --quiet prysmvalidator.service && echo "Validator updated and running"
