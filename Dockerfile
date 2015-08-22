FROM ubuntu:latest


RUN apt-get update
RUN apt-get -y install wget

RUN wget -q http://repos.sensuapp.org/apt/pubkey.gpg -O- | apt-key add -
RUN echo "deb     http://repos.sensuapp.org/apt sensu main" | tee /etc/apt/sources.list.d/sensu.list

RUN apt-get update
RUN apt-get install -y uchiwa


COPY assets /app/assets
RUN chmod 755 /app/assets/entrypoint.sh

EXPOSE 3000

ENTRYPOINT ["/app/assets/entrypoint.sh"]
