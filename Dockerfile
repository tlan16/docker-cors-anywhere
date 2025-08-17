FROM node:alpine

WORKDIR /src


ENV YARN_CACHE_FOLDER=/root/.yarn

ADD package.json yarn.lock .yarn/ .yarnrc.yml .
RUN --mount=type=cache,target=/root/.yarn,sharing=locked \
  yarn --immutable

ADD . .

EXPOSE 8080

CMD ["yarn", "start"]
