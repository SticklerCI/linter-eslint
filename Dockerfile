FROM node:8

WORKDIR /var/lib/eslint-linter

RUN yarn global add eslint

COPY "eslint-config.json" .
COPY "entrypoint.sh" .

ENTRYPOINT [ "./entrypoint.sh" ]
