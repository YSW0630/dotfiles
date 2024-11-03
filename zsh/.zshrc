# Run tmux at startup
if command -v tmux &> /dev/null && [ -z "$TMUX" ] && [ "$TERM" = "alacritty" ]; then
  tmux attach-session || exec tmux new-session && exit
fi

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-history-substring-search"
plug "zap-zsh/sudo"
plug "zap-zsh/fzf"
plug "zap-zsh/supercharge"
plug "zap-zsh/completions"
plug "zap-zsh/atmachine-prompt"
plug "YSW0630/zsh-vi-mode" # plug "zap-zsh/vim" # export VI_MODE_ESC_INSERT="jk"
plug "hlissner/zsh-autopair"
plug "Aloxaf/fzf-tab"
plug "chivalryq/git-alias"
plug "MichaelAquilina/zsh-you-should-use"

# Load and initialise completion system
autoload -Uz compinit
compinit

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Custom command aliases and functions.
source ~/.config/zsh/aliases.zsh
source ~/.config/zsh/funcs.zsh

# TheFuck eval
eval $(thefuck --alias fuck)

# MY FETCH
pfetch
