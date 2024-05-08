FROM node:alpine AS development

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

RUN npm ci

COPY . . 

RUN npm run build
