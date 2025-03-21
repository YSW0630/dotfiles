# Run tmux at startup
if command -v tmux &> /dev/null && [ -z "$TMUX" ] && env | grep -q "ALACRITTY"; then
  tmux attach-session || exec tmux new-session && exit
fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.config/oh-my-zsh"

# ZSH configuration.
# (1)  ZSH Themes
# (2)  Case-insensitive completion
# (3)  Hyphen-insensitive completion
# (4)  Auto-update ohmyzsh (update automatically without asking)
# (5)  Auto-update ohmyzsh frequency (in days)
# (6)  Prevent some URLs be messed up
# (7)  Auto-setting terminal title
# (8)  Auto-correction (I use theF*ck btw)
# (9)  Disable marking untracked files under VCS as dirty
# (10) Add commands execution time to the history
# (11) Plugins
ZSH_THEME="atmachine-prompt" # https://github.com/zap-zsh/atmachine-prompt/blob/master/atmachine-prompt.zsh-theme
CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="true"
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 14
DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_AUTO_TITLE="false"
ENABLE_CORRECTION="false"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="mm/dd/yyyy"
plugins=(
	git 
	sudo
	fzf
	extract
	fzf-tab
	vi-mode 
	zsh-autosuggestions
	zsh-syntax-highlighting 
	zsh-you-should-use
)

# Bind jk/jj to vi-mode
bindkey -M viins jj vi-cmd-mode
bindkey -M viins jk vi-cmd-mode

# Load oh-my-zsh.sh
source $ZSH/oh-my-zsh.sh

# Custom command aliases and functions.
source ~/.config/zsh/aliases.zsh
source ~/.config/zsh/funcs.zsh

# TheFuck eval
eval $(thefuck --alias fuck)

# MY FETCH
pfetch
