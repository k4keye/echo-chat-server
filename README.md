# echo-char-server

## tool
- IntelliJ
- Postman
- DBeaver
- Git

## Environment

### Docker Compose setup
You will need to install Docker and docker-compose.

a Docker Compose setup is provided. It comes with the following databases:

- mariadb:10.8.3
- redis:7.0.4

and kafka :
- kafka:2.12-2.0.1
- zookeeper:3.4.6


To launch the database and kafka containers:

```
 $ docker-compose up -d
```

## Usage

### kafka
topic list
```
./opt/kafka_2.12-2.0.1/bin/kafka-topics.sh --list --zookeeper zookeeper:2181
```

## ETC
http://localhost:8081/swagger-ui/index.html#/
