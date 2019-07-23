#!/bin/bash

export DATASOURCE=npm
export LOOKUP_NAME=pnpm
export VERSION_SCHEME=npm
export START_VERSION=3.0.0
export IMAGE=pnpm
export IGNORED_VERSIONS=3.5.4

npx renovatebot/dockerbuilder
