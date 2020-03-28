FROM postgres:9.6.3
ADD assets/db/db.init.sql /docker-entrypoint-initdb.d/init.db.sql
RUN chmod 555 /docker-entrypoint-initdb.d/init.db.sql
