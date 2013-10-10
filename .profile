
#!/bin/bash

export PATH=$PATH:/usr/local/bin
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export LANG=en_US.UTF-8
export PKG_CONFIG_PATH=/usr/local/Cellar
export NODE_ENV='development'

alias ls='ls -pFh'
alias grep='grep --color=auto'
alias pnode='ps aux | grep node'
alias enode='nave use 0.6.15'
alias vim='mvim -v'
alias h='history'
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'
# Set git autocompletion and PS1 integration
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  . /usr/local/etc/bash_completion.d/git-completion.bash
  export PS1='\[$(tput sgr0)$(tput setaf 5)\]\w\[$(tput sgr0)$(tput setaf 2)\] $(__git_ps1 "[%s]") \n\[$(tput setaf 3)\]\u@\h \[$(tput sgr0)\]=> '
fi

GIT_PS1_SHOWDIRTYSTATE=true
if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion
fi

if [ -d ~/.commands ]; then
    for f in ~/.commands/*.sh
    do
        . $f   
    done
fi
          
[[ -s "/Users/matt/.rvm/scripts/rvm" ]] && source "/Users/matt/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

