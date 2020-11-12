#!/bin/bash

APP=$1
STATE=$2
CUR_STATE=$(docker inspect -f {{.State.Running}} $APP)

if [[ $STATE = "on" ]] && [[ $CUR_STATE != 'true' ]]; then
  sudo docker-compose -f /opt/docker/$APP/docker-compose.yml up -d
  touch /home/homebridge/app-controller/$APP.flag
elif [[ $STATE = "off" ]]; then
  sudo docker-compose -f /opt/docker/$APP/docker-compose.yml down
  rm /home/homebridge/app-controller/$APP.flag
fi
