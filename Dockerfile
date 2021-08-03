#Our base image will be ubuntu of version 20.04.
FROM ubuntu:20.04
FROM node:14.17.4

#Adding our js file
COPY src ./

#Adding package files
COPY package.json package-lock.json ./

VOLUME ./src

#Installing npm packages
RUN npm install

#Running index.js
CMD ["npm", "start"]