#!/bin/bash

# $1 = 'user:group'
# $2 = filePath
# $3 = 'newFileName'
sudo chown $1 -R $2
sudo chmod 776 -R $2
sudo mv $2 "$3"