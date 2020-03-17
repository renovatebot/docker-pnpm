FROM renovate/node@sha256:c4a626ba2ce0a764ed5479950cf65b98201a03958304132cf34455578e8662b1

USER root

ARG PNPM_VERSION

RUN npm i -g pnpm@$PNPM_VERSION

RUN chmod -R a+rw /usr/local

RUN chown -R ubuntu:ubuntu /home/ubuntu

USER ubuntu
