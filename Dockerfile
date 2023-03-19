FROM node:18.13.0-alpine3.17

WORKDIR /app

COPY package.json /app/
COPY yarn.lock /app/

RUN yarn install --production && yarn cache clean

COPY . /app

ENV NODE_ENV production
ENTRYPOINT ["node", "./bin/server"]
