ARG BASE_IMAGE=nodered/node-red
FROM ${BASE_IMAGE}
COPY . /data
WORKDIR /data
RUN npm install node-red-dashboard @node-red-contrib-themes/theme-collection node-red-contrib-mongodb4 node-red-node-ui-table
WORKDIR /usr/src/node-red
USER node-red