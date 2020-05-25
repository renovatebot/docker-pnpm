# renovate: datasource=npm depName=pnpm versioning=npm
ARG PNPM_VERSION=4.13.0

FROM renovate/buildpack:2-node@sha256:820d8068b729d39ea0e6532c664df95427c938078b3c6fd01419967cb7de6a31

# renovate: datasource=docker depName=node versioning=docker
ARG NODE_VERSION=12.16.3
RUN install-tool node

ARG PNPM_VERSION
RUN install-tool pnpm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-pnpm" \
      org.opencontainers.image.version="${PNPM_VERSION}"

USER 1000
