#!/bin/bash

for d in $1*/; do
	cd $d && docker-compose down && docker-compose pull && docker-compose up -d
done
