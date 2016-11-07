Docker build for postgresql-9.5 as per https://docs.docker.com/examples/postgresql_service/

---

** Usage **

  1. `docker build -t adsabs/postgresql .`
  1. `docker run -d --name postgresql -p 5432:5432 -v $PWD/conf:/conf -v $PWD/logs:/var/log/postgresql -v $PWD/data:/data adsabs/postgresql`

For improved performance
[AdsDataSqlSync](https://github.com/adsabs/AdsDataSqlSync) uses the 
Postgres [Copy From
Program](https://www.postgresql.org/docs/current/static/sql-copy.html)
command to load column/flat files.  If you intend to use a Postgres
instance with AdsDataSqlSync, the Postgres container will need to
mount an additional directory so it has access to the Python code in
AdsDataSqlSync as well as the data directory for the flat files. 
