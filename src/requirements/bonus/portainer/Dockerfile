FROM alpine:3.17

RUN apk update && \
	apk upgrade && \
	apk add portainer

COPY ./tools/setup_portainer.sh /tmp/setup_portainer.sh

ENTRYPOINT [ "sh", "/tmp/setup_portainer.sh" ]
