# iSH-journal

A minimal iSH  journaling workflow using Git for versioning

## What it does
- Creates one Markdown file per day
- Opens it in nano
- Commits and pushes file to a priv repo

## Why (you may ask)
because obviously i cant use an already built journaling app
## you require
- git
- nano
- POSIX shell (i used iSH)

## ma steps
 1. add git, nano and openssh-client
 2. make a journal repo
mkdir ~/journal
cd ~/journal
git init
 3. create your repo, add it
use git remote add orgin
 4. authenticate github
 5. add the [script](bin/journal.ah) and make it executable
 6. make an alias for it

