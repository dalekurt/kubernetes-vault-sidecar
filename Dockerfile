FROM gcr.io/google_containers/alpine-with-bash:1.0

# Environment Variables
ENV JQ_VERSION="1.5"
ENV VAULTENV_VERSION="0.6.0"

RUN apk add --update curl wget jq build-base && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

RUN cd /tmp && \
    wget --no-check-certificate \
    https://github.com/channable/vaultenv/releases/download/v${VAULTENV_VERSION}/vaultenv-${VAULTENV_VERSION}_x86_64-ubuntu-linux.2_x86_64-linux
RUN mv /tmp/vaultenv-${VAULTENV_VERSION}_x86_64-ubuntu-linux.2_x86_64-linux /bin/vaultenv && \
    chmod +x /bin/vaultenv

CMD ["bash" ]
