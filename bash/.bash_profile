#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# export fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
# export some xdg
export XDG_DATA_HOME="$HOME/.local/share/"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
# export local bin
export PATH=/home/justin/.local/bin:$PATH
export _JAVA_AWT_WM_NONREPARENTING=1
export GOPATH="$XDG_DATA_HOME"/go

# Start Window Manager
startx
