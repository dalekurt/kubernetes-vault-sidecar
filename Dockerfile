FROM gcr.io/google_containers/alpine-with-bash:1.0
MAINTAINER Dale-Kurt Murray <hello@dalekurtmurray.com>

RUN apk add --update curl wget build-base bash && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

WORKDIR /tmp
RUN wget --no-check-certificate https://github.com/stedolan/jq/releases/download/jq-1.5/jq-1.5.tar.gz && \
tar -zxf jq-1.5.tar.gz && \
cd jq-1.5 && \
./configure && make && make install

CMD ["bash" ]
