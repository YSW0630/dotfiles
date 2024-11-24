# User configuration.
USER_LANGUAGE="en_US.UTF-8"
export LC_ALL=${USER_LANGUAGE}
export LANG=${USER_LANGUAGE}
export LANGUAGE=${USER_LANGUAGE}
export EDITOR="vim"
export MANPATH="/usr/local/man:$MANPATH"
export MANPAGER='nvim +Man!' # Set default man pager
export VI_MODE_SET_CURSOR=true # Ohmyzsh Vi-mode cursor-style
export XDG_DATA_HOME="$HOME/.local/share/"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export HISTFILE="${XDG_STATE_HOME}"/bash/history 
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export NIMBLE_DIR="$XDG_DATA_HOME/nimble"
