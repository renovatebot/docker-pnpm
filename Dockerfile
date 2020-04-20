FROM renovate/buildpack:1@sha256:7e28ef186596dc293af15d6c63febf1e424c3e832702864944b498b3050cac52

# renovate: datasource=docker depName=node versioning=docker
ARG NODE_VERSION=12.16.2
RUN install-tool node

# renovate: datasource=npm depName=pnpm versioning=npm
ARG PNPM_VERSION=4.13.0
RUN install-tool pnpm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-pnpm" \
      org.opencontainers.image.version="${PNPM_VERSION}"

USER 1000
