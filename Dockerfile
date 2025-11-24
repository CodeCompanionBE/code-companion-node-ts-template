# Build stage: install deps and compile TypeScript
FROM node:22.21.1-slim AS build
WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci

COPY tsconfig.json ./
COPY src ./src

RUN npm run build

# Runtime stage: only production deps + built files
FROM node:22.21.1-slim
ARG PORT=3000
ENV PORT=${PORT}
WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci --omit=dev

COPY --from=build /usr/src/app/dist ./dist

EXPOSE ${PORT}
CMD [ "node", "dist/index.js" ]
