# git-history-manipulations

Multiple simple shell scripts for rewriting Git history.

### rewrite-author.sh

Rewrite all commits from a specific old email to a new name and email.
Usage:
./rewrite-author.sh OLD_EMAIL "New Name" NEW_EMAIL

### set-dates.sh

Set all commit dates to a fixed timestamp.
Usage:
./set-dates.sh "2020-01-01T00:00:00"

### shift-dates.sh

Shift all commit timestamps by a time offset.
Usage:
./shift-dates.sh "+2 hours"

### change-message.sh

Replace commit messages for commits with exactly one parent.
Usage:
./change-message.sh "New message"

### replace-in-messages.sh

Search and replace text inside all commit messages.
Usage:
./replace-in-messages.sh OLD NEW

### modify-commit.sh

Change the author, email, and date for a specific commit hash.
Usage:
./modify-commit.sh HASH "Name" EMAIL DATE

### rewrite-authors.sh

Rewrite multiple authors using a mapping file.
Usage:
./rewrite-authors.sh authors.txt

## Notes

* These scripts rewrite Git history; you may need to force-push afterward.
* Make scripts executable with: chmod +x scriptname.sh

## Contact

If you encounter any issues, please report them on the
[issue tracker](https://github.com/FlorianMichael/git-history-manipulations/issues).  
If you just want to talk or need help with git-history-manipulations feel free to join my
[Discord](http://florianmichael.de/discord).
