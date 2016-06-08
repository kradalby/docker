#!/bin/bash

set -e

# Clean files related to some previous run
rm -f /var/run/nsd/nsd.pid
rm -f /var/lib/nsd/nsd.db

# Start NSD
/usr/sbin/nsd -d -c /etc/nsd/nsd.conf -l /var/log/nsd/nsd.log
