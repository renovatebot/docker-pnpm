FROM renovate/buildpack:2-node@sha256:440c5df813ee4a1c19277f2c77b9dd1dd74704a332fdbadc8e7649f063cd34e3

# renovate: datasource=docker depName=node versioning=docker
ARG NODE_VERSION=12.16.3
RUN install-tool node

# renovate: datasource=npm depName=pnpm versioning=npm
ARG PNPM_VERSION=4.13.0
RUN install-tool pnpm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-pnpm" \
      org.opencontainers.image.version="${PNPM_VERSION}"

USER 1000
