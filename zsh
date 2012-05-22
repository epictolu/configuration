# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="epictolu"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
bindkey -v # Use vi-style navigation

zstyle ':completion:*' use-cache on # Turn on completion
zstyle ':completion:*' cache-path ~/.zsh/cache # Location for completion cache

# Aliases
alias c="clear"
alias cp="cp -r"
alias rm="rm -r"

# Configuration file aliases
alias zsh_config="vi ~/.zshrc"
alias vim_config="vi ~/.vimrc"
alias git_config="vi ~/.gitconfig"
alias keymando_config="vi ~/github/configuration/keymando"
alias vundle_config="vi ~/.vundlerc"
alias keymando_plugins="vi ~/github/keymando_files/keymando/plugins"

# Git aliases
alias ga="git add"
alias gb="git branch"
alias gci="git add -A; git commit"
alias gcia="git add -A; git commit --amend"
alias gcim="git add -A; git commit -m"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gd="git diff"
alias gl="git log"
alias gm="git merge --squash"
alias gpull="git pull"
alias gpush="git push"
alias gr="git reset"
alias grem="git remote"
alias gs="git status"
alias gsci="git svn dcommit"
alias gsco="git svn rebase"
alias gu="git update"

# Directory aliases
alias sp2010="cd ~/mounts/sp2010"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
