#!/bin/sh
TARGET="$1"
NAME="$2"
EMAIL="$3"
DATE="$4"
git filter-branch --env-filter "
if [ \"\$GIT_COMMIT\" = \"$TARGET\" ]; then
    export GIT_AUTHOR_NAME=\"$NAME\"
    export GIT_AUTHOR_EMAIL=\"$EMAIL\"
    export GIT_COMMITTER_NAME=\"$NAME\"
    export GIT_COMMITTER_EMAIL=\"$EMAIL\"
    export GIT_AUTHOR_DATE=\"$DATE\"
    export GIT_COMMITTER_DATE=\"$DATE\"
fi
" --tag-name-filter cat -- --all
