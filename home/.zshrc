# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(
  git
  tmux
)

source $ZSH/oh-my-zsh.sh

# User configuration
if [[ $(command -v nvim) ]]; then
  export VISUAL='nvim'
  export EDITOR='nvim'
else
  export VISUAL='vim'
  export EDITOR='vim'
fi

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--color=dark
--color=fg:-1,bg:-1,hl:#c678dd,fg+:#ffffff,bg+:#4b5263,hl+:#d858fe
--color=info:#98c379,prompt:#61afef,pointer:#be5046,marker:#e5c07b,spinner:#61afef,header:#61afef,border:#4b5263
'
export BAT_THEME=TwoDark

# Aliases
alias vim=nvim
alias gs='git status'
