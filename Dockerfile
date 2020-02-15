FROM renovate/node@sha256:57f31fefc1a2018d39e5bb0e3dd778d8d8598a12aa02eb87d6d968e0eda3aeb1

USER root

ARG PNPM_VERSION

RUN npm i -g pnpm@$PNPM_VERSION

RUN chmod -R a+rw /usr/local

RUN chown -R ubuntu:ubuntu /home/ubuntu

USER ubuntu
