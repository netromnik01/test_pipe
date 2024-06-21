#!/bin/bash
# $1=master $2='hotfix/1'

BASE=$1
HEAD=$2

if [[ $BASE == 'master' && $HEAD != 'develop' &&  $HEAD != 'hotfix/'* ]]; then
  # bash ./.github/scripts/send_issue.sh $COMMENTS_URL $GITHUB_TOKEN $MESSAGE
  exit 1
fi
