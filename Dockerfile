# renovate: datasource=npm depName=pnpm versioning=npm
ARG PNPM_VERSION=4.13.0

FROM renovate/buildpack:2-node@sha256:d2eaa8d410c0afefcf70b13adfc01d746bec3dd1f02729cb0eaeffc7d83a792c

# renovate: datasource=docker depName=node versioning=docker
ARG NODE_VERSION=12.16.3
RUN install-tool node

ARG PNPM_VERSION
RUN install-tool pnpm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-pnpm" \
      org.opencontainers.image.version="${PNPM_VERSION}"

USER 1000
