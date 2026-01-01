### Run tmux at startup
# if command -v tmux &> /dev/null && [ -z "$TMUX" ] && env | grep -q "GNOME_TERMINAL"; then
   #tmux attach-session || exec tmux new-session && exit
# fi

### Show a fetch
pfetch
ncal -3 -C

### Export editor
export EDITOR=vim

### Export sbin directory
export PATH=$PATH:/usr/sbin

### SET MANPAGER
### Uncomment only one of these!

### "nvim" as manpager
export MANPAGER="nvim +Man!"

### "less" as manpager and makes it colored
# export MANPAGER="less"
# export GROFF_NO_SGR=1
# export LESS_TERMCAP_mb=$'\e[1;32m'
# export LESS_TERMCAP_md=$'\e[1;32m'
# export LESS_TERMCAP_me=$'\e[0m'
# export LESS_TERMCAP_se=$'\e[0m'
# export LESS_TERMCAP_so=$'\e[01;33m'
# export LESS_TERMCAP_ue=$'\e[0m'
# export LESS_TERMCAP_us=$'\e[1;4;31m'

### Export Rust path
export PATH="$HOME/.cargo/bin:$PATH"

### Export Golang path
export GOPATH=/opt/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

### SETTING OTHER ENVIRONMENT VARIABLES
if [ -z "$XDG_CONFIG_HOME" ] ; then
    export XDG_CONFIG_HOME="$HOME/.config"
fi
if [ -z "$XDG_DATA_HOME" ] ; then
    export XDG_DATA_HOME="$HOME/.local/share"
fi
if [ -z "$XDG_CACHE_HOME" ] ; then
    export XDG_CACHE_HOME="$HOME/.cache"
fi

### Enable case-insensitive
bind -s 'set completion-ignore-case on'

### Clear the screen then move the cursor to the bottom (Ctrl-o)
bind '"\C-o":"clear && tput cup $(tput lines) 0\n"'

### This operation won't overwrite existing files
set -o noclobber # as well as set -C

### Allow auto cd into a directory without using 'cd'
shopt -s autocd

### make a directory and cd into it
function mkcd() {
  mkdir -p "$1" && cd "$1"
}

### COUNTDOWN   
cdown () {
    N=$1
  while [[ $((--N)) -gt  0 ]]
    do
        echo "$N" |  figlet -c | lolcat &&  sleep 1
    done
}

### Set up thefuck
eval $(thefuck --alias)
