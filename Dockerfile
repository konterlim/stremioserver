FROM node:8.17.0-alpine

WORKDIR /stremio

ARG VERSION=4.4.120

RUN apk add --no-cache wget
RUN wget https://dl.strem.io/four/v${VERSION}/server.js
RUN wget https://dl.strem.io/four/v${VERSION}/stremio.asar

EXPOSE 11470

ENTRYPOINT [ "node", "server.js" ]