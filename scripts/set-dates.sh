#!/bin/sh
DATE="$1"
git filter-branch --env-filter "
export GIT_AUTHOR_DATE=\"$DATE\"
export GIT_COMMITTER_DATE=\"$DATE\"
" --tag-name-filter cat -- --all
