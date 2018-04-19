FROM gcr.io/google_containers/alpine-with-bash:1.0
MAINTAINER Dale-Kurt Murray <hello@dalekurtmurray.com>

RUN apk update && \
  apk add curl jq
CMD ["tail", "-F", "-n0", "/etc/hosts" ]
