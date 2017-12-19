FROM node:carbon

## Create app directory
WORKDIR /usr/src/app


## Install app dependencies
COPY package*.json ./

RUN npm install
# RUN npm install --only=production


## Bundle app source
COPY . .
EXPOSE 8080
cmd [ "npm", "start" ]
