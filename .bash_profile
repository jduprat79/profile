
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# MacPorts Installer addition on 2009-09-08_at_09:58:50: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# some more ls aliases
alias ll='ls -lh'
alias la='ls -alh'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

PATH=$PATH:$HOME/bin # User script
PATH=$PATH:/usr/local/mysql/bin # MySQL executables
export PATH

# Fix MySQL issue 'uninitialized constant Mysql::Error' using rake
export DYLD_LIBRARY_PATH="/usr/local/mysql/lib:$DYLD_LIBRARY_PATH"

# git bash completion
. /usr/share/git-core/git-completion.bash

PS1='\u@\h \w\[\033[0;36m\]$(__git_ps1)\[\033[00m\]$ '

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM=auto

export CLICOLOR=1

export AWS_CONFIG_FILE=~/.aws
