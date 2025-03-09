#!/bin/sh
cat <<EOL >> ${PGDATA}/postgresql.conf
shared_preload_libraries = 'pg_cron'
cron.database_name='${POSTGRES_DB:-postgres}'
EOL

# Required to load pg_cron
pg_ctl restart
