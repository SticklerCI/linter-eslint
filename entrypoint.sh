#!/bin/bash

REPO_URL=$1
COMMIT=$2

git clone -q $REPO_URL repo
git --git-dir=repo/.git --work-tree=repo checkout -q $COMMIT

eslint --c eslint-config-example.json \
   --no-eslintrc \
   --no-inline-config \
   --format json \
   --env es6 \
   --parser-options ecmaVersion:6,sourceType:module \
   repo/**/*
