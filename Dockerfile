FROM ubuntu

WORKDIR /app

RUN apt-get update &&\
    apt-get install -y  unzip wget &&\
    wget -O snell-server.zip https://dl.nssurge.com/snell/snell-server-v4.0.0-linux-amd64.zip && \
    unzip snell-server.zip 

COPY snell-server.conf /app/snell-server.conf
COPY entrypoint.sh /app/entrypoint.sh

RUN chmod -R g+ws /app


ENTRYPOINT [ "/bin/bash", "entrypoint.sh" ]
