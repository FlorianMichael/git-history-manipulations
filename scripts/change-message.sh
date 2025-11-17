#!/bin/sh
MESSAGE="$1"
git filter-branch --msg-filter "
P=\$(git cat-file commit \$GIT_COMMIT | sed -n \"s/^parent //p\" | wc -l)
if [ \"\$P\" -eq 1 ]; then
    echo \"$MESSAGE\"
else
    cat
fi
" -- --all
