FROM renovate/node@sha256:4d07f7b5ba49a1905dc5f822fad5c77b4eef675f4328110aa9f1cf8f91d32f1e

USER root

ARG PNPM_VERSION

RUN npm i -g pnpm@$PNPM_VERSION

RUN chmod -R a+rw /usr/local

RUN chown -R ubuntu:ubuntu /home/ubuntu

USER ubuntu
