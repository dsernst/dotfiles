export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion


# Meta aliases
alias editor="subl" # set editor of choice for other aliases
alias prof="editor ~/.bash_profile"
alias reprof=". ~/.bash_profile"

alias cl="clear"

alias subl="open -a Sublime\ Text"
alias atom="open -a Atom"
alias s.="open -a Sublime\ Text ."


# Navigational aliases
ds () {
  cd ~/Documents
}
de () {
  cd ~/Desktop
}
dw () {
  cd ~/Downloads
}
dse () {
  cd ~/Documents/dsernst.github.io
}
j () {
  cd ~/Documents/journal
}
euler () {
  cd ~/Documents/ProjectEuler
}
lv () {
  cd ~/Documents/Liquid
}
alias quotes="editor ~/Documents/dsernst.github.io/data_favorite_quotes.yml"
alias lintrc="editor ~/.eslintrc"

# combine mkdir and cd
mkcd () {
  mkdir "$1"
  cd "$1"
}

# combine cd & sublime open current directory
s () {
  "$1"
  editor .
}

alias server="python -m SimpleHTTPServer"
alias tcpu="top -o cpu"

# git aliases
alias gs="git status"
alias gh="git log --graph --pretty=format:'%Cred%h%Creset %Cblue%cr:%Creset %s%C(yellow)%d %C(green)%an%Creset' --abbrev-commit"
alias gco="git checkout"
alias gci="git commit"
alias gcm="git commit -m"
alias gp="git push"
alias ga="git add"
alias gd="git diff"
alias gacm="git add .; git commit -m"
alias gpum="git pull upstream master"
alias gf="git fetch"
alias grv="git remote -v"
alias gcom="git checkout master"
alias gm="git merge"
alias gpsuo="git push --set-upstream origin"
alias gundo="git reset HEAD~"
alias gpl="git pull"
alias gb="git checkout -b"
alias gbv="git branch -v"
alias gprum="git pull --rebase upstream master"
alias gpf="git push --force"
alias gbd="git branch -d"
alias gbD="git branch -D"
alias gca="git commit --amend"
alias gdi="git diff --cached"
alias gprud="git pull --rebase upstream dev"
alias gbo="git for-each-ref --sort=-committerdate refs/heads/ --format='%(color:blue)(%(committerdate:relative))%(color:reset) %(color:yellow)%(refname):%(color:reset) %(color:red)%(objectname:short)%(color:reset) %(contents:subject)  %(color:green)%(authorname)%(color:reset)' | sed 's/refs\/heads\///g'"
alias gacapf="git add .; git commit --amend --no-edit; git push --force"
alias grH="git reset HEAD"
alias gsh="git show"
alias gst="git stash"

function ignore () {
  echo "$1" >> .gitignore
}

# clone from my github, then cd into it
cln () {
  git clone https://github.com/dsernst/${1}.git
  cd "$1"
}

# github aliases
alias hb="hub browse"
alias hpr="hub pull-request"

export REPLYTO=david@dsernst.com


# set bash tab title to folder name
# set prompt to `[blue]folder name/ $ `
PS1='\[\e]0;\W\a\]\[\033[01;34m\]\W/ \$ \[\033[0m\]'


# Add pip to PATH
export PATH=$PATH:~/Library/Python/2.7/bin

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


# Add git autocomplete to bash (via https://git-scm.com/book/en/v1/Git-Basics-Tips-and-Tricks)
source ~/git-completion.bash
# Add git autocomplete for our custom aliases
source ~/.git-alias-autocompletion.sh
