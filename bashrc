#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

COLOR_RED="\033[31m"
COLOR_YELLOW="\033[33m"
COLOR_GREEN="\033[32m"
COLOR_OCHRE="\033[95m"
COLOR_BLUE="\033[34m"
COLOR_WHITE="\033[37m"
COLOR_RESET="\033[0m"

export PATH=$HOME/bin:$HOME/.local/bin:$HOME/.config/composer/vendor/bin:$HOME/go/bin:$PATH

# Unlimited history
export HISTSIZE= 
export HISTFILESIZE=

export EDITOR=vim

# Shorten pwd
export PROMPT_DIRTRIM=2

# Git
source /usr/share/git/completion/git-prompt.sh

# nvm
source /usr/share/nvm/init-nvm.sh

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto verbose"
export GIT_PS1_DESCRIBE_STYLE="describe"
export GIT_PS1_SHOWCOLORHINTS=1
export PROMPT_COMMAND='__git_ps1 "\[$COLOR_BLUE\]\w\[$COLOR_RESET\]" " \[$COLOR_GREEN\]>\[$COLOR_RESET\] "'
# export PROMPT_COMMAND='__git_ps1 "\[\033[34m\]\w\[\033[0m\]" "\[\033[32m\] >\[\033[0m\] "'

# shopts
shopt -s checkwinsize
shopt -s autocd
shopt -s cdable_vars
shopt -s cdspell
shopt -s checkhash
shopt -s checkjobs
shopt -s cmdhist
shopt -s dirspell
shopt -s expand_aliases
shopt -s globstar
shopt -s histappend
shopt -s histreedit
shopt -s histverify
shopt -s interactive_comments
shopt -s lithist

# Command not found - search in the official repos
source /usr/share/doc/pkgfile/command-not-found.bash

# fzf
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

### Color output
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip --color=auto'
alias ls='ls --color=auto'

alias ll='ls -ll'
alias la='ls -la'
alias l='ls -l'

#export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
export LESS='-R '
# and so on

man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

function homestead() {
	(cd ~/Homestead && vagrant $*)
}

