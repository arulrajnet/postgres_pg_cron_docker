Postgres with pg_cron
======================

This is a docker image for running Postgres with pg_cron extension.

## To build

```bash
docker compose build
```

## To run

```bash
docker compose up -d
```

## To connect to the database

```bash
docker compose exec db psql -U admin -d test
```

## To create a cron job

```sql
SELECT cron.schedule('nightly-vacuum', '0 3 * * *', 'VACUUM');
```

## To view the cron jobs

```sql
SELECT * FROM cron.job;
```

To know about the cron syntax, refer to [pg_cron](https://github.com/citusdata/pg_cron).
