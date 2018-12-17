FROM node:carbon-slim

RUN apt-get update && apt-get install -y --no-install-recommends git