# git () {
#   /usr/local/bin/git "$@";
#   say "go";
# }


# Meta aliases
alias prof="sublime ~/.bash_profile"
alias reprof=". ~/.bash_profile"

alias cl="clear"

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
green () {
  cd ~/Documents/boundless-avocado
}
euler () {
  cd ~/Documents/ProjectEuler
}
gilded () {
  cd ~/Documents/gilded
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
alias gbo="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname) %(committerdate) %(authorname)' | sed 's/refs\/heads\///g'"

# git merge remote master
gmm () {
  git merge ${1}/master
}

# github aliases
alias hb="hub browse"
alias hpr="hub pull-request"

alias quotes="sublime ~/Documents/dsernst.github.io/data_favorite_quotes.yml"

chrome () {
  open -a "Google Chrome" "$1"
}

# gilded aliases
alias gdeploy="git checkout production && git merge master --no-edit && gulp build && git add . && git commit -m '(deploy) re-gulped' && eb deploy"
alias gildedpr="hpr -b hesitant-tapdancers:master"


# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}

alias g-c="git-crypt"

alias server="python -m SimpleHTTPServer"

# for `thefuck` binary:
alias fuck='$(thefuck $(fc -ln -1))'

alias npmi="npm install"
alias npmig="npm install -g"
