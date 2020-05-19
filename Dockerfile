# renovate: datasource=npm depName=pnpm versioning=npm
ARG PNPM_VERSION=4.13.0

FROM renovate/buildpack:2-node@sha256:b0aae95d55264a80ab01c48ab992bd135e6aa88f01d130e8bf8fb40ab3d3129a

# renovate: datasource=docker depName=node versioning=docker
ARG NODE_VERSION=12.16.3
RUN install-tool node

ARG PNPM_VERSION
RUN install-tool pnpm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-pnpm" \
      org.opencontainers.image.version="${PNPM_VERSION}"

USER 1000
