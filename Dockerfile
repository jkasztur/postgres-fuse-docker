FROM postgres:10.3

LABEL description="Prepared database for testing persistance quickstarts in Fuse 7.1"

MAINTAINER Jan Kasztura <jkasztur@redhat.com>

ADD initDatabase.sh /docker-entrypoint-initdb.d/initDatabase.sh

ADD reportdb-postgresql-script.sql /tmp/reportdb-postgresql-script.sql
