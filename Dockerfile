ARG BASE_IMAGE=nodered/node-red
FROM ${BASE_IMAGE}
COPY . /data
WORKDIR /data
USER root
RUN npm install
USER node-red
WORKDIR /usr/src/node-red