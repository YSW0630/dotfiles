# Run tmux at startup
#if command -v tmux &> /dev/null && [ -z "$TMUX" ] && env | grep -q "GNOME_TERMINAL"; then
	#tmux attach-session || exec tmux new-session && exit
#fi

# Show a fetch
pfetch
ncal -3 -C

# export editor
export EDITOR=vim

# export colored man pages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# Enable case-insensitive
bind -s 'set completion-ignore-case on'

# Clear the screen then move the cursor to the bottom (Ctrl-o)
bind '"\C-o":"clear && tput cup $(tput lines) 0\n"'

# This operation won't overwrite existing files
set -o noclobber # as well as set -C

# Set up thefuck
eval $(thefuck --alias)
