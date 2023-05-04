I dockerized postgresql for development purposes. 
After starting the included docker-compose.yml, the databse can be setup by connecting to the container running

```
$ docker exec -it dev-postgres /bin/sh
    # psql --username postgres
```
And then setting up the database in the postgres CLI

The application connects to the database using the database url: postgresql://postgres:postgres@localhost:5432/postgres

I had to make sure that the native postgresql service on my computer was not running to free up the port.