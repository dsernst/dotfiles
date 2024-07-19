# For best results, symlink this file to git repo
# ln -s ~/Documents/dotfiles/.bash_profile ~/.bash_profile

# Auto-added by nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Meta aliases
alias editor="code" # set editor of choice for other aliases
alias prof="editor ~/.zprofile"
alias reprof="source ~/.zprofile"

alias cl="clear"


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
euler () {
  cd ~/Documents/ProjectEuler
}
goenka () {
	cd ~/Documents/GoenkaNative
}
dot () {
	cd ~/Documents/dotfiles
}
alias icons="sudo node ~/Documents/dotfiles/custom\ icons/apply-all.js"

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
alias gbc='git branch --merged main | grep -v "\* main" | xargs -n 1 git branch -d'
alias gr="git restore"
alias grs="git restore --staged"

function gacmp () {
  gacm $1 && git push
}

# npm aliases
alias nr="npm run"
alias nv="npm version"

# yarn aliases
alias yl="yarn lint"

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


# Add python to PATH
export PATH=$PATH:~/.pyenv/versions/2.7.18/bin

##### WHAT YOU WANT TO DISABLE FOR WARP - BELOW
if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then

# iterm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

fi
##### WHAT YOU WANT TO DISABLE FOR WARP - ABOVE



# Add git autocomplete to bash (via https://git-scm.com/book/en/v1/Git-Basics-Tips-and-Tricks)
# source ~/git-completion.bash
# Add git autocomplete for our custom aliases
# source ~/.git-alias-autocompletion.sh

# Pretty ls
# (requires "brew install coreutils")
alias ls="gls -hp --color --group-directories-first"


# Add Android SDK tools to PATH
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools


# Add deno to PATH
export PATH="/Users/dsernst/.deno/bin:$PATH"

# Add pyenv to PATH
export PATH="~/.pyenv/shims:$PATH"

alias sup="supabase"
alias yt="yarn test"

# Find where alias might have be set:
grep-alias () {
  grep -i "alias $1=" ~/.zshrc ~/.profile /etc/bashrc /etc/zshrc ~/.zprofile
}

## official github cli (use `ghcli auth` to set personal access token)
alias ghcli="/opt/homebrew/Cellar/gh/2.52.0/bin/gh"

## Added automatically by homebrew to ~/.zprofile, moved here since that is symlinked to this file.
eval "$(/opt/homebrew/bin/brew shellenv)"
