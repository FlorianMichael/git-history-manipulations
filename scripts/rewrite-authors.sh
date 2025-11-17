#!/bin/sh
FILE="$1"
git filter-branch --env-filter "
while read OLD NEWNAME NEWEMAIL; do
    if [ \"\$GIT_AUTHOR_EMAIL\" = \"\$OLD\" ]; then
        export GIT_AUTHOR_NAME=\"\$NEWNAME\"
        export GIT_AUTHOR_EMAIL=\"\$NEWEMAIL\"
    fi
    if [ \"\$GIT_COMMITTER_EMAIL\" = \"\$OLD\" ]; then
        export GIT_COMMITTER_NAME=\"\$NEWNAME\"
        export GIT_COMMITTER_EMAIL=\"\$NEWEMAIL\"
    fi
done < $FILE
" --tag-name-filter cat -- --all
