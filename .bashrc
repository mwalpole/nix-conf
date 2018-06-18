export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PS1="\u@\h \W $ "
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi
