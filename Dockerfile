FROM node:18.4.0-alpine3.15 as develop-stage

# needed for vue-dapp npm package
RUN apk update && apk add make

RUN npm install npm@latest -g
WORKDIR /app

COPY ./api/package*.json ./

RUN npm install

COPY . .

CMD node server.js