#!/bin/bash
set -e

hostname $BALENA_DEVICE_NAME_AT_INIT

if [ -z "$FF_DEVICE_YML" ]; then
  if ! [ -f /opt/flowfuse/device.yml ]; then
    echo $FF_DEVICE_YML | base64 -d > /opt/flowfuse/device.yml
  else
    echo "Existing device.yml found"
  fi
else
  echo "no device.yml env var provided"
fi

exec "$@"
