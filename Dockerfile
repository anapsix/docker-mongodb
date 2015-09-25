# anapsix/mongodb
FROM alpine:edge
MAINTAINER Anastas Dancha <anapsix@random.io>
RUN echo "@testing http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk upgrade --update && \
    apk add mongodb@testing

COPY ./gosu-amd64 /usr/local/bin/gosu
COPY docker-entrypoint.sh /entrypoint.sh

EXPOSE 27017
VOLUME /var/lib/mongodb
ENTRYPOINT ["/entrypoint.sh"]
CMD ["mongod","--bind_ip","0.0.0.0","--dbpath","/var/lib/mongodb","--nounixsocket","--journal","--cpu","--noprealloc"]
