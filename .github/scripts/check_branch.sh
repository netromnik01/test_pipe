#!/bin/bash

if [[ $1 == 'master' && ($2 != 'develop' && !($2 =~ 'hotfix/.*')) ]]; then
  curl \
    -X POST \
    $COMMENTS_URL \
    -H "Content-Type: application/json" \
    -H "Authorization: token $GITHUB_TOKEN" \
    --data '{ "body":"Пр может быть только от ветки develop или hotfix/**" }'
  exit 1
fi