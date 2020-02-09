#!/bin/bash
while ! `nc -z $CONFIG_SERVER $CONFIG_SERVER_PORT`;
    do sleep $SLEEP_TIME; echo "Waiting for $CONFIG_SERVER";done
java -jar discovery-server.jar