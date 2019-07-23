FROM renovate/node@sha256:b675b096edd733b2045d3ef4ba0adbf3cce65f814d68b0eb42a06b4d5be7e050

USER root

ARG PNPM_VERSION

RUN npm i -g pnpm@$PNPM_VERSION

RUN chmod -R a+rw /usr/local

RUN chown -R ubuntu:ubuntu /home/ubuntu

USER ubuntu
