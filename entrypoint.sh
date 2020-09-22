#!/bin/bash

set -e

rm -f /tpaga_test/tmp/pids/server.pid

exec "$@"
