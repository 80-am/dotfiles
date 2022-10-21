#!/bin/bash

# $1 = 'docker-compose root'

for d in $1*/; do
	docker-compose -f $d/docker-compose.yml up --force-recreate --build -d --remove-orphans
done
