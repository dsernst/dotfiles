# Meta aliases
alias prof="sublime ~/.bash_profile"
alias reprof=". ~/.bash_profile"

alias subl="open -a Sublime\ Text\ 2"
alias s.="open -a Sublime\ Text\ 2 ."

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
toy () {
  cd ~/Documents/2014-12-toy-problems
}
j () {
  cd ~/Documents/journal
}


# combine mkdir and cd
mkcd () {
  mkdir "$1"
  cd "$1"
}

# combine touch and sublime
tosu () {
  touch "$1"
  sublime "$1"
}

# combine cd & sublime open current directory
s () {
  "$1"
  open -a Sublime\ Text\ 2 .
}

# clone from my github, then cd into it
cln () {
  git clone https://github.com/dsernst/${1}.git
  cd "$1"
}

export REPLYTO=david@dsernst.com

# git aliases
alias gs="git status"
alias gh="git log --pretty=format:'%Cblue%h%Creset %Cgreen%ad%Creset | %s%C(yellow)%d%Creset [%an]' --graph --date=short --decorate"
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

# git merge remote master
gmm () {
  git merge ${1}/master
}
