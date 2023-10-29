FROM node:20.9.0-alpine

WORKDIR /src
ADD . .

RUN yarn --immutable

EXPOSE 8080

CMD ["yarn", "start"]
