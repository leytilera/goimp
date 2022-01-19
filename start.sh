#!/bin/bash

cd /opt/game
mono GettingOverItMP.Server.exe --hostname $HOSTNAME --maxplayers $MAX --port 25050 --nosteam --private
