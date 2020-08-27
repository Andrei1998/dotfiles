export ZSH=~/.ohmyzsh

ZSH_THEME="mh"
ZSH_DISABLE_COMPFIX=true

plugins=(
    colored-man-pages
    tmux
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source ~/.ohmyzsh/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
