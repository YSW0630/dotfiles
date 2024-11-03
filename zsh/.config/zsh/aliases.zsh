# shortcuts
alias l='ls -CF'
alias ll='ls -alF'
alias la='ls -A'
alias fl="ranger"
alias sl="sl -e"
alias p="sudo pacman"
alias v="nvim"
alias V="vim --clean"
alias nv="nvim"
alias tty-clock="tty-clock -ctC 6"
alias wth="curl wttr.in"
alias ptt="surf term.ptt.cc"
alias wget='wget --hsts-file="$XDG_DATA_HOME/wget-hsts"'
alias ytmus="yt-dlp -f 'ba'"
alias ytvid="yt-dlp -f mp4" # yt-dlp -S ext:mp4:m4a <URL> for hightest quality

# safer rm mv
alias rm='rm -i'
alias mv="mv -i"

# corrections
alias reboot='sync && sync && sudo reboot'
alias shutdown='sync && sync && sudo shutdown now'
alias gdb='gdb -q'

# vim typos
alias :q='exit'
alias :q!='exit'

# configuration shortcuts
alias zshconf="v ~/.zshrc"
alias zenvconf="v ~/.zshenv"
alias vimconf="v ~/.vimrc"
alias myvim="v ~/.vim/MyVimConf.vim"
alias nvconf="v ~/.config/nvim/init.vim"

# bookmarks
alias home='cd ~/; ll'
alias dl='cd ~/Downloads; ll'
alias docs='cd ~/Documents; ll'
alias books='cd ~/Documents/Books; ll'
alias works='cd ~/workspace; ll'
alias pics='cd ~/Pictures; ll'
alias vids='cd ~/Videos; ll'
alias musics='cd ~/Music; ll'
alias dots="cd ~/gitroot/dotfiles; ll"
