#!/bin/bash
echo $1 $2
if [[ $1 == 'master' && ($2 != 'develop' && !($2 =~ 'hotfix/.*')) ]]; then
  bash ./.github/scripts/send_issue.sh $COMMENTS_URL $GITHUB_TOKEN $MESSAGE
  exit 1
fi