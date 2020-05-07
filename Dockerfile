FROM alpine:3.11 as UTIL

ADD rarlinux-5.4.0.tar.gz /tmp/
RUN apk add --no-cache make && \
	cd /tmp/rar && \
	make && \
	mv rar_static /usr/local/bin/rar && \
	rm -rf /tmp/*

FROM scratch
COPY --from=UTIL /usr/local/bin/* /usr/local/bin/
ENTRYPOINT ["rar"]