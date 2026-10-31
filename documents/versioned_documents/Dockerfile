FROM node:22-bookworm-slim

ARG TARGETARCH
ARG PANDOC_VERSION=3.6.4
ARG TYPST_VERSION=0.13.1

RUN apt-get update && apt-get install -y --no-install-recommends \
      ca-certificates curl xz-utils make chromium fonts-liberation \
    && curl -fsSL -o /tmp/pandoc.deb "https://github.com/jgm/pandoc/releases/download/${PANDOC_VERSION}/pandoc-${PANDOC_VERSION}-1-${TARGETARCH}.deb" \
    && apt-get install -y /tmp/pandoc.deb \
    && case "$TARGETARCH" in arm64) T=aarch64;; *) T=x86_64;; esac \
    && curl -fsSL "https://github.com/typst/typst/releases/download/v${TYPST_VERSION}/typst-${T}-unknown-linux-musl.tar.xz" \
       | tar -xJ --strip-components=1 -C /usr/local/bin "typst-${T}-unknown-linux-musl/typst" \
    && rm -rf /tmp/pandoc.deb /var/lib/apt/lists/*

# mmdc runs Chromium as root inside the container, hence --no-sandbox
ENV PUPPETEER_SKIP_DOWNLOAD=1
RUN npm install -g @mermaid-js/mermaid-cli@11.12.0 \
    && echo '{"executablePath":"/usr/bin/chromium","args":["--no-sandbox"]}' > /puppeteer.json
ENV MMDC="mmdc -p /puppeteer.json"

WORKDIR /docs
