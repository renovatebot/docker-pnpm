# renovate: datasource=npm depName=pnpm versioning=npm
ARG PNPM_VERSION=4.13.0

FROM renovate/buildpack:2-node@sha256:d9bf882d42387eda98f643e35f1eff9c85f877d418e165cb1f97238520d5f277

# renovate: datasource=docker depName=node versioning=docker
ARG NODE_VERSION=12.18.0
RUN install-tool node

ARG PNPM_VERSION
RUN install-tool pnpm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-pnpm" \
      org.opencontainers.image.version="${PNPM_VERSION}"

USER 1000
