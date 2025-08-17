FROM node:alpine

WORKDIR /src

ENV YARN_CACHE_FOLDER=/root/.yarn

COPY . .
RUN --mount=type=cache,target=/root/.yarn,sharing=locked \
  yarn --immutable

EXPOSE 8080

CMD ["yarn", "start"]
