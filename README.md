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
2. create a private journal repo
- mkdir ~/journal
- cd ~/journal
- git init
3. create your repo, add it
- git remote add origin git@github.com:USERNAME/journal.git
4. authenticate github
- ssh-keygen -t ed25519
- cat ~/.ssh/id_ed25519.pub
5. add key to github
- test it: ssh -T git@github.com
6. add the [script](bin/journal.sh) and make it executable
7. make an alias for it
- add this to ~/profile: alias journal='$HOME/journal.sh'
- reload it: source ~/.profile
# daily usage
 journal 

