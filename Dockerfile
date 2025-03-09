FROM postgres:17.4-bookworm

# Install pg_cron and dependencies
RUN apt-get update && apt-get install -y postgresql-17-cron

# Create a database initialization script
COPY ./initdb.d/ /docker-entrypoint-initdb.d/
