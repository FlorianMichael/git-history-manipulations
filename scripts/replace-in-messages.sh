#!/bin/sh
SEARCH="$1"
REPLACE="$2"
git filter-branch --msg-filter "
sed \"s/$SEARCH/$REPLACE/g\"
" -- --all
