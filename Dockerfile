FROM renovate/node@sha256:8150ddc30cefd01767ac0df5271158799af970b3823f1aeddbcfa45f664d60d2

USER root

ARG PNPM_VERSION

RUN npm i -g pnpm@$PNPM_VERSION

RUN chmod -R a+rw /usr/local

RUN chown -R ubuntu:ubuntu /home/ubuntu

USER ubuntu
