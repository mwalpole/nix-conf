export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

if [ -f ~/.conf/git-prompt.sh ]; then
    source ~/.conf/git-prompt.sh
fi

function ps1 () {
    local YELLOW="\[\033[0;33m\]"
    local NO_COLOUR="\[\033[0m\]"
    local HISTORY="[\!]"
    local PWD="\`if [[ `pwd|wc -c|tr -d " "` > 18 ]]; then echo "\\W"; else echo "\\w"; fi\`"
    PS1="$YELLOW$HISTORY$NO_COLOUR[\d \t $YELLOW\h $NO_COLOUR$PWD]\$(__git_ps1) "
}
ps1
export PS1

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
