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
- POSIX shell (tested on iSH/alpine)

# iSH Journal – Full Setup (Single Block)

1. Install dependencies (in iSH):
- apk add git nano openssh-client

2. Configure Git identity:
- git config --global user.name "Your Name"
- git config --global user.email "you@example.com"

3. Generate SSH key:
- ssh-keygen -t ed25519
- cat ~/.ssh/id_ed25519.pub

4. Add the public key to GitHub:
- GitHub → Settings → SSH and GPG keys → New SSH key

Test authentication:
- ssh -T git@github.com

5. Create local journal repo:
- mkdir ~/journal
- cd ~/journal
- git init

6. Create a private GitHub repo and add remote:
- git remote add origin git@github.com:USERNAME/journal.git

7. Create the journal script:
nano ~/journal.sh

## paste this:
[script](bin/journal.sh) 


 Make it executable: 
- chmod +x ~/journal.sh

8. Initial push: 
-cd ~/journal 
- touch init.md 
- git add . 
- git commit -m "initial commit" 
- git branch -M main
- git push -u origin main
- rm init.md”


9. Create alias:
- nano ~/.profile
- alias journal='$HOME/journal.sh'
- source ~/.profile

10. Daily usage:
- journal


