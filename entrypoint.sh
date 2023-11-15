#!/bin/bash
set -e

hostname $BALENA_DEVICE_NAME_AT_INIT

exec "$@"
