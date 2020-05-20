# renovate: datasource=npm depName=pnpm versioning=npm
ARG PNPM_VERSION=4.13.0

FROM renovate/buildpack:2-node@sha256:e006ec31c92890df0f31e39652539aa7c2cc293abc4cde7b8c79f7d044389501

# renovate: datasource=docker depName=node versioning=docker
ARG NODE_VERSION=12.16.3
RUN install-tool node

ARG PNPM_VERSION
RUN install-tool pnpm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-pnpm" \
      org.opencontainers.image.version="${PNPM_VERSION}"

USER 1000
