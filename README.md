Docker build for postgresql-9.5 as per https://docs.docker.com/examples/postgresql_service/

---

** Usage **

  1. `docker build -t adsabs/postgresql .`
  1. `docker run -d --name postgresql -p 5432:5432 -v $PWD/conf:/conf -v $PWD/logs:/var/log/postgresql -v $PWD/data:/data adsabs/postgresql`
