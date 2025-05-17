# MayCMF Docker Containers
:computer: Docker container for development environment and Quick Start

![](https://repository-images.githubusercontent.com/223875170/2ee1e500-1612-11ea-897f-5c7ed34f7a05)

## Containers included:

- Golang [latest](https://hub.docker.com/_/golang)
- MariaDB 10.11.11 [mariadb:10.11.11](https://hub.docker.com/_/mariadb)
- Postgres [latest](https://hub.docker.com/_/postgres)
- Mailhog (Custom from Skilldlabs Company) [Mailhog](https://hub.docker.com/r/skilldlabs/mailhog)
- Redis 5.0 [bitnami/redis:5.0](https://hub.docker.com/r/bitnami/redis/)
- NodeJS: [node:22.2.0] (https://hub.docker.com/_/node)

------

## The first of all:
##### Install Docker:
- On Linux Ubuntu/Debian:
  https://docs.docker.com/install/linux/docker-ce/ubuntu/ 
  https://docs.docker.com/install/linux/docker-ce/debian/

- On MacOS:
  https://docs.docker.com/docker-for-mac/install/

- On Windows:
  https://docs.docker.com/docker-for-windows/install/

##### Install Docker Compose:
- https://docs.docker.com/compose/install/

##### Download repository:

```
git clone git@github.com:MayCMF/docker.git <YOUR_FOLDER>
```

##### Go to downloaded folder:

```
cd <YOUR_FOLDER>
```

##### Configure your .env file:

```
cp .env.default .env

```

##### Start docker container via Makefile:

```
$ make all
```

##### Start docker container via docker-compose:

```
docker-compose up
or
docker-compose up -d     //in background
```

##### Now you can access to you static site:

- MayCMF Server API: http://localhost:8088/
- MayCMF FrontEnd: http://localhost/
