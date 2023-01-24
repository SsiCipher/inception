FROM alpine:latest

RUN apk update && apk upgrade && apk add --no-cache wget

COPY ./tools/setup_adminer.sh /tmp/setup_adminer.sh

ENTRYPOINT [ "sh", "/tmp/setup_adminer.sh" ]
