ARG PORT=3000
FROM node:22.15.0-slim3.21

ENV PORT=3000
WORKDIR /usr/src/app
COPY package*.json ./
COPY dist ./

RUN npm i --omit=dev

EXPOSE ${PORT}
CMD [ "node", "index.js" ]

