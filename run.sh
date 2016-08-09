#!/bin/bash

DATADIR='/data'
CONFDIR='/conf'
LOGDIR='/var/log/postgresql'

if [ ! "$(ls -A $DATADIR)" ]; then
  rsync -a /var/lib/postgresql/9.5/main/ $DATADIR
  chown -R postgres:postgres /data
  chmod -R 0700 /data
fi

chown -R postgres:postgres $CONFDIR
chown -R postgres:postgres $LOGDIR

su -c "/usr/lib/postgresql/9.5/bin/postgres -c config_file=/conf/postgresql.conf" postgres
