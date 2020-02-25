FROM renovate/node@sha256:46537523171880d4d5c673f301ef6b433f5029f314ba99e16335fe451eee923d

USER root

ARG PNPM_VERSION

RUN npm i -g pnpm@$PNPM_VERSION

RUN chmod -R a+rw /usr/local

RUN chown -R ubuntu:ubuntu /home/ubuntu

USER ubuntu
