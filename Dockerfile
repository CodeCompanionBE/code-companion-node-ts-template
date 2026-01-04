ARG PORT=3000

FROM node:24.12.0-slim AS base
ENV PORT=3000

WORKDIR /usr/src/app

COPY . .
RUN npm i
RUN npm run build

FROM node:24.12.0-slim AS production
WORKDIR /usr/src/app
COPY --from=base /usr/src/app/dist .
RUN npm i --omit=dev

EXPOSE ${PORT}
CMD [ "node", "index.js" ]
