#!/bin/bash
COMMENTS_URL=$1
GITHUB_TOKEN=$2
MESSAGE=\"$3\"

curl \
    -X POST \
    $COMMENTS_URL \
    -H "Content-Type: application/json" \
    -H "Authorization: token $GITHUB_TOKEN" \
    --data '{ "body":$MESSAGE}' &>/dev/null
