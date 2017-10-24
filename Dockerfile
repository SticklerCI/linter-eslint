FROM node:8

WORKDIR /var/lib/eslint-linter

RUN yarn global add eslint

COPY "eslint-config-example.json" .
COPY "entrypoint.sh" .

ENTRYPOINT [ "./entrypoint.sh" ]
