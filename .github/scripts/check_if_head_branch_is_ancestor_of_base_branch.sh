#!/bin/bash
# $1=master $2='hotfix/1'

BASE=$1
HEAD=$2

git fetch origin $BASE

if git merge-base --is-ancestor  $HEAD $BASE; then
#   bash ./.github/scripts/send_issue.sh $COMMENTS_URL $GITHUB_TOKEN $MESSAGE
  exit 1
fi
