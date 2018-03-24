#!/bin/bash

REPO_URL=$1
COMMIT=$2

git clone -q $REPO_URL repo
git --git-dir=repo/.git --work-tree=repo checkout -q $COMMIT

eslint --c eslint-config.json \
   --no-eslintrc \
   --no-inline-config \
   --format json \
   --parser-options ecmaVersion:9,sourceType:module \
   repo/**/*
