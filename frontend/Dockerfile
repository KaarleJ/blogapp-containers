FROM node:16 AS build

WORKDIR /usr/src/app

COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm ci --production

COPY ./ /usr/src/app

RUN npm run build

FROM nginx:1.20.1

COPY --from=build /usr/src/app/build /usr/share/nginx/html