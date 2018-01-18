FROM ubuntu

COPY ./bin/start /usr/local/bin/start

RUN apt-get update && apt-get install -y cowsay fortunes \
    && rm -rf /var/lib/apt/lists/* \
    && chmod ugo+x /usr/local/bin/start

CMD start
