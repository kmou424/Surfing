FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    curl zip unzip jq git ca-certificates gzip \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /build
COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
