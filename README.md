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

## Author

<p align="center">
  <a href="https://x.com/arulrajnet">
    <img src="https://github.com/arulrajnet.png?size=100" alt="Arulraj V" width="100" height="100" style="border-radius: 50%;" class="avatar-user">
  </a>
  <br>
  <strong>Arul</strong>
  <br>
  <a href="https://x.com/arulrajnet">
    <img src="https://img.shields.io/badge/Follow-%40arulrajnet-1DA1F2?style=for-the-badge&logo=x&logoColor=white" alt="Follow @arulrajnet on X">
  </a>
  <a href="https://github.com/arulrajnet">
    <img src="https://img.shields.io/badge/GitHub-arulrajnet-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub @arulrajnet">
  </a>
  <a href="https://linkedin.com/in/arulrajnet">
    <img src="https://custom-icon-badges.demolab.com/badge/LinkedIn-arulrajnet-0A66C2?style=for-the-badge&logo=linkedin-white&logoColor=white" alt="LinkedIn @arulrajnet">
  </a>
</p>
