# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="ole-amuse"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git colored-man history web-search )

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# get current running script location

# --------------------------------------------------------------------------
# path
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/sbin


# --------------------------------------------------------------------------
#  aliases
alias ..='cd ..'            # go to parent dir
alias ...='cd ../..'        # go to grandparent dir
alias ll='ls -lh -ctrl'         # sort list
alias l.='ll -d .*'         # list hidden files
alias lld='ll -ltd */'      # list directories
alias du='du -ch'           # disk usage 
alias du1='du -d 1'
alias h=history             

# what most people want from od (hexdump)
alias hd='od -Ax -tx1 -v'


# GREP_COLOR=bright yellow on black bg.
# use GREP_COLOR=7 to highlight whitespace on black terminals
# LANG=C for speed. See also: http://www.pixelbeat.org/scripts/findrepo
alias grep='GREP_COLOR="1;33;40" LANG=C grep --color=auto'
 

# git flow alias
alias gfeature='git flow feature'
alias grelease='git flow release'
alias ghotfix='git flow hotfix'
alias gsupport='git flow support'


# --------------------------------------------------------------------------
#  config

# set vim as the default text editor
export EDITOR=vim     

# Don't store duplicate adjacent items in the history
HISTCONTROL=ignoreboth

#umask 0002
#ulimit -n 2048

#export http_proxy=http://127.0.0.1:8087
#export https_proxy=https://127.0.0.1:8087
export no_proxy='localhost,127.0.0.*,10.*,192.168.*, *.global.ctrip.com, *.ctripcorp.com, *.sh.ctriptravel.com, 172.30.*, 172.29.*, 172.16.*, 172.28.*, 10.168.*, 10.8.*, 10.2.*, *.cn1.global.ctrip.com'
#alias python='python27'

export GOPATH=/gopath
export GOROOT=/usr/lib/golang
export PATH=$PATH:$HOME/bin:/gopath/bin/centos
