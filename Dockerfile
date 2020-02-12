FROM renovate/node@sha256:d9626e860e8370c9d376e9dfe7d0005226dc3a4ab73170a47e30804c33de8b6e

USER root

ARG PNPM_VERSION

RUN npm i -g pnpm@$PNPM_VERSION

RUN chmod -R a+rw /usr/local

RUN chown -R ubuntu:ubuntu /home/ubuntu

USER ubuntu
