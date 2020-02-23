FROM renovate/node@sha256:8030bbd3088b72e7a3388ada3815e37f4d29deb5b21a22dae18e252e30e1c2bf

USER root

ARG PNPM_VERSION

RUN npm i -g pnpm@$PNPM_VERSION

RUN chmod -R a+rw /usr/local

RUN chown -R ubuntu:ubuntu /home/ubuntu

USER ubuntu
