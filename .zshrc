ZSH=$HOME/.oh-my-zsh
ZSH_THEME="cloud"
plugins=(git brew django python)
source $ZSH/oh-my-zsh.sh
unsetopt correct_all
zstyle ':completion:*' insert-tab false
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
if [ -f ~/.profile ]; then
    source ~/.profile
fi
