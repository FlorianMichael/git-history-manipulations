# git-history-manipulations

Multiple simple shell scripts for rewriting Git history.

## Installation

Clone this repository and add the `scripts/` directory to your `PATH` to make the commands available as `git` subcommands:

```bash
git clone https://github.com/FlorianMichael/git-history-manipulations.git
cd git-history-manipulations
# e.g. in ~/.bashrc or ~/.bash_profile
export PATH="$PWD/scripts:$PATH"
```

On Windows with Git Bash, you can do the same and add the `export PATH=...` line to your `~/.bashrc`.

After that you can use the scripts as regular Git subcommands, for example:

```bash
git rewrite-author --help
git set-dates "2020-01-01T00:00:00" --no-dry-run
git replace-in-messages OLD NEW --no-dry-run
```

## Commands

### `git rewrite-author`

Rewrite all commits from a specific old email to a new name and email.

Usage (preferred):

```bash
git rewrite-author --old-email OLD_EMAIL --new-name "New Name" --new-email NEW_EMAIL [--dry-run|--no-dry-run] [--force]
```

Positional fallback (deprecated):

```bash
git rewrite-author OLD_EMAIL "New Name" NEW_EMAIL
```

### `git set-dates`

Set all commit dates to a fixed timestamp.

Usage:

```bash
git set-dates "2020-01-01T00:00:00" [--dry-run|--no-dry-run] [--force]
```

### `git shift-dates`

Shift all commit timestamps by a time offset.

Usage:

```bash
git shift-dates "+2 hours" [--dry-run|--no-dry-run] [--force]
```

### `git change-message`

Replace commit messages for commits with exactly one parent.

Usage:

```bash
git change-message "New message" [--dry-run|--no-dry-run] [--force]
```

### `git replace-in-messages`

Search and replace text inside all commit messages.

Usage:

```bash
git replace-in-messages OLD NEW [--dry-run|--no-dry-run] [--force]
```

### `git modify-commit`

Change the author, email, and date for a specific commit hash.

Usage:

```bash
git modify-commit HASH "Name" EMAIL DATE [--dry-run|--no-dry-run] [--force]
```

## Notes

* These scripts rewrite Git history; you may need to force-push afterward.
* Make scripts executable if needed (on Unix): `chmod +x scripts/git-*`.

## Contact

If you encounter any issues, please report them on the
[issue tracker](https://github.com/FlorianMichael/git-history-manipulations/issues).  
If you just want to talk or need help with git-history-manipulations feel free to join my
[Discord](http://florianmichael.de/discord).
