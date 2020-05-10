FROM renovate/buildpack:2-node@sha256:5972cd297dca735bbb52a34c1115834efd2cd2e8da7e03fd1e560dad5b994624

# renovate: datasource=docker depName=node versioning=docker
ARG NODE_VERSION=12.16.3
RUN install-tool node

# renovate: datasource=npm depName=pnpm versioning=npm
ARG PNPM_VERSION=4.13.0
RUN install-tool pnpm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-pnpm" \
      org.opencontainers.image.version="${PNPM_VERSION}"

USER 1000
