FROM renovate/node:12@sha256:15f9ea4d553c535d050599f6ca7366dda938c742fe20c8f529fd94b6fa02af86

# renovate: datasource=npm depName=pnpm versioning=npm
ARG PNPM_VERSION=4.13.0

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-pnpm" \
      org.opencontainers.image.version="${PNPM_VERSION}"


#required by installer
# renovate: datasource=docker depName=renovate/node versioning=docker
ARG NODE_VERSION=12

RUN /usr/local/build/pnpm.sh

USER 1000
