FROM redash/redash:latest

USER root

# Oracle instantclient
COPY oracle /tmp/oracle

RUN apt-get update  -y \
    && apt-get install -y unzip libaio-dev \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/* \
    && for i in /tmp/oracle/* ;do unzip $i -d /usr/local/ ;done \
    && ln -sv /usr/local/instantclient* /usr/local/instantclient \
    && ln -sv /usr/local/instantclient/libclntsh.so.11.1 /usr/local/instantclient/libclntsh.so \
    && ln -sv /usr/local/instantclient/sqlplus /usr/bin/sqlplus

ENV ORACLE_HOME=/usr/local/instantclient \
    LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/instantclient

RUN pip install cx_Oracle

USER redash
#Add REDASH ENV to add Oracle Query Runner
ENV REDASH_ADDITIONAL_QUERY_RUNNERS=redash.query_runner.oracle
