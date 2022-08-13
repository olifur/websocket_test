FROM node:18.4.0-alpine3.15 as develop-stage

RUN apk update && apk add make

RUN npm install npm@latest -g
WORKDIR /app

COPY ./package*.json ./

RUN npm install

COPY . .

CMD node server.js