FROM node:16

WORKDIR /usr/src/app

COPY --chown=node:node ./ /usr/src/app

RUN npm install && \
    chown -R node:node /usr/src/app/node_modules

USER node
CMD ["npm", "run", "start"]