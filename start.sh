#!/bin/bash

# Thanks to https://github.com/tuxeh/docker-sonarr/blob/master/develop/start.sh

function handle_signal {
  PID=$!
  echo "received signal. PID is ${PID}"
  kill -s SIGHUP $PID
}

trap "handle_signal" SIGINT SIGTERM SIGHUP

echo "starting sonarr"
/usr/local/bin/mono /opt/NzbDrone/NzbDrone.exe --no-browser -data=/config & wait
echo "stopping sonarr"
