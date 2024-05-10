source $HOME/.shellrc
source $HOME/.aliasesrc

export ZSH=/usr/share/oh-my-zsh/

ZSH_THEME="kafeitu"

plugins=(git)

if [ -f $ZSH/oh-my-zsh.sh ]; then
  source $ZSH/oh-my-zsh.sh
fi

if [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

setopt GLOB_DOTS

unsetopt SHARE_HISTORY

[[ -f ~/.zshrc-personal ]] && . ~/.zshrc-personal
