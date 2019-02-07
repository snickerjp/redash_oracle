# Redash Docker image in Oracle Instant Client

## build

### 1st

Download **Oracle Instant Client**

Read [oracle/DOWNLOAD.md](oracle/DOWNLOAD.md)

### 2nd

```sh
docker build -t redash_server_oracle .
```

## use

```sh
# install docker-compose
docker-compose up -d
```

## enable "NLS_LANG"

un-comment from `docker-compose.yml`

```sh
# NLS_LANG: "Japanese_Japan.AL32UTF8"
^
NLS_LANG: "Japanese_Japan.AL32UTF8"
```

```sh
# install docker-compose
docker-compose up -d
```
