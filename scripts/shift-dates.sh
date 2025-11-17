#!/bin/sh
OFFSET="$1"
git filter-branch --env-filter "
export GIT_AUTHOR_DATE=\$(date -d \"\$GIT_AUTHOR_DATE $OFFSET\" +%s)
export GIT_COMMITTER_DATE=\$(date -d \"\$GIT_COMMITTER_DATE $OFFSET\" +%s)
" --tag-name-filter cat -- --all
