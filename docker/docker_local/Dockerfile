FROM node:16.15.1-alpine

COPY package.json .
COPY *yarn.lock .
RUN yarn install

COPY . .

CMD ["yarn", "start"]
