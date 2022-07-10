FROM node:18-alpine

WORKDIR /cunny

COPY package.json yarn.lock turbo.json .yarnrc.yml ./
COPY .yarn ./.yarn

COPY apps/server ./apps/server
COPY packages ./packages

RUN yarn install

EXPOSE 4000

CMD ["yarn", "start:server"]