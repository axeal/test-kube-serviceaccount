FROM alpine:3.8

RUN apk add --no-cache curl

WORKDIR /opt

COPY test.sh /opt/test.sh

CMD ["/bin/sh", "/opt/test.sh"]
