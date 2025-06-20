FROM ubuntu:24.04 AS builder

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
         build-essential \
         pkg-config \
         libssl-dev \
         git-all \
         curl \
         ca-certificates \
    && curl -fsSL https://cli.nexus.xyz/ | sh

FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
         libssl3 \
         ca-certificates \
    && rm -rf /var/lib/apt/lists/*

COPY --from=builder /root/.nexus/bin/nexus-network /usr/local/bin/nexus-network

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
