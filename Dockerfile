FROM renovate/node@sha256:5372b658df853a87a75efe33689cb88646d8e329ae481b2b258432f4c41e6959

USER root

ARG PNPM_VERSION

RUN npm i -g pnpm@$PNPM_VERSION

RUN chmod -R a+rw /usr/local

RUN chown -R ubuntu:ubuntu /home/ubuntu

USER ubuntu
