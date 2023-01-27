FROM alpine:3.17

RUN apk update && \
	apk upgrade && \
	apk add --no-cache wget git nodejs npm && \
	npm install -g pnpm

RUN wget https://golang.org/dl/go1.17.2.linux-amd64.tar.gz && \
	tar -C /usr/local -xzf go1.17.2.linux-amd64.tar.gz && \
	export PATH=$PATH:/usr/local/go/bin && \
	go get -u github.com/cespare/reflex

RUN git clone https://github.com/amir20/dozzle.git && \
	cd dozzle && \
	pnpm install && pnpm build

COPY ./tools/setup_portainer.sh /tmp/setup_portainer.sh

ENTRYPOINT [ "sh", "/tmp/setup_portainer.sh" ]
