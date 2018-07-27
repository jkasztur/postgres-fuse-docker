#!/usr/bin/env bash

psql -U fuse -d fuse -c "create database reportdb owner fuse encoding 'utf8';"
psql -U fuse -d reportdb -f /tmp/reportdb-postgresql-script.sql
psql -U fuse -d reportdb -c "set schema 'report';select * from incident;"

sed -i 's/^#max_prepared_transactions = 0/max_prepared_transactions = 200/' /var/lib/postgresql/data/postgresql.conf
