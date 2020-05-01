FROM alpine AS builder
RUN apk update && \
	apk add --no-cache git build-base openssl-dev pcre-dev lua-dev
RUN git clone https://github.com/lefcha/imapfilter.git
RUN \
	cd imapfilter && \
	make all && \
	make install

FROM alpine
RUN apk update && apk add --no-cache lua pcre
COPY --from=builder /usr/local/share/imapfilter /usr/local/share/imapfilter
COPY --from=builder /usr/local/bin /usr/local/bin
COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
