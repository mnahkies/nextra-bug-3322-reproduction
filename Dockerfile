FROM node:22

WORKDIR /app
ADD . .
RUN corepack enable
RUN yarn
RUN yarn build

