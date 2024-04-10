FROM node:20-alpine

WORKDIR /app

COPY dist/ /app/dist
COPY node_modules/ /app/node_modules
COPY package.json /app/package.json
COPY yarn.lock /app/yarn.lock

ENTRYPOINT ["yarn",  "start:dist"]