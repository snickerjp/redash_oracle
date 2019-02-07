# Redash Docker image in Oracle Instant Client

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/6cf74b4b23d2499b9ea5528023715734)](https://app.codacy.com/app/snickerjp/redash_oracle?utm_source=github.com&utm_medium=referral&utm_content=snickerjp/redash_oracle&utm_campaign=Badge_Grade_Dashboard)

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
