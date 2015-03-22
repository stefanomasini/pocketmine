FROM bartt/ubuntu-base
MAINTAINER Stefano Masini <stefano@stefanomasini.com>

RUN apt-get -y install python3-yaml

RUN mkdir /pocketmine

ADD ./scripts/start /start
RUN chmod +x /start

VOLUME /pocketmine
WORKDIR /pocketmine

EXPOSE 19132

CMD ["/start"]
