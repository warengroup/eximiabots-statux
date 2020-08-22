FROM node:13.14.0-alpine

#Dependencies
RUN apk add --virtual .build-deps python make g++ gcc

WORKDIR /usr/src/app

COPY / /usr/src/app/

RUN npm install

CMD [ "npm", "start" ]