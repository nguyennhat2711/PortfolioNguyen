#!/bin/sh

git filter-branch -f --env-filter '

OLD_EMAIL=""
CORRECT_NAME="ngeyennhat"
CORRECT_EMAIL="ngeyenhat2711@outlook.com"


    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"

    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"

' --tag-name-filter cat -- --branches --tags
