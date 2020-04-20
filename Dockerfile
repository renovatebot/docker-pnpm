FROM renovate/node:12@sha256:e627c4af063010fb60ca220f377c46a0fb5fd845d73a18bc95645f1c9d806b20

# renovate: datasource=npm depName=pnpm versioning=npm
ARG PNPM_VERSION=4.13.0

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-pnpm" \
      org.opencontainers.image.version="${PNPM_VERSION}"


#required by installer
# renovate: datasource=docker depName=renovate/node versioning=docker
ARG NODE_VERSION=12

RUN /usr/local/build/pnpm.sh

USER 1000
