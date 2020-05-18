FROM renovate/buildpack:2-node@sha256:f32eb15a54c440bd22d7d79eb09ee4d938279c8726e87dd34dbadb9fc290fc68

# renovate: datasource=docker depName=node versioning=docker
ARG NODE_VERSION=12.16.3
RUN install-tool node

# renovate: datasource=npm depName=pnpm versioning=npm
ARG PNPM_VERSION=4.13.0
RUN install-tool pnpm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-pnpm" \
      org.opencontainers.image.version="${PNPM_VERSION}"

USER 1000
