########################### my startup  ##############################

nitch
# uwufetch
# pfetch
# neofetch
# fortune | cowsay -f tux | lolcat
# pokemon-colorscripts --random --no-title
# colorscript random
 
########################## end startup ##############################


########################## P10K config ##############################

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.

# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  # source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi
# source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

########################## P10K config ##############################


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# Enable colors and change prompt:
# ZSH_THEME="robbyrussell"
# ZSH_THEME="bira"
# ZSH_THEME="fino-time"
# ZSH_THEME="random"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g.
COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    # git-prompt
    fzf
    sudo
    vi-mode
    archlinux
    zsh-autosuggestions
    zsh-completions
    zsh-syntax-highlighting
    colored-man-pages
    command-not-found
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias fl="ranger"
alias lf="ranger"
alias p="sudo pacman"
alias v="vim"
alias nv="nvim"
alias lv="lvim"
alias tty-clock="tty-clock -ctC 6"
alias pdf="zathura"
alias wth="curl wttr.in"
alias paint="kolourpaint"
alias calcurse="VISUAL=vim calcurse"
alias ptt="surf term.ptt.cc"
# alias ptt="ssh bbsu@ptt.cc"
# alias ls="logo-ls"

# yt-dlp
alias ytmus="yt-dlp -f 'ba'"
alias ytvid="yt-dlp -f mp4" # yt-dlp -S ext:mp4:m4a <URL> for hightest quality

# picom
alias start-picom="picom -b"
alias stop-picom="killall picom"
alias reload-picom="stop-picom && start-picom"

# suckless
alias Dwm="cd ~/suck/dwm/dwm_colored/"
alias Dmen="cd ~/suck/dmenu"
alias Surf="cd ~/suck/surf"
alias Dwmb="cd ~/suck/blocks/dwmblocks_colored"
alias Pth="cd ~/suck/patches"

# Lazy wifi & bluetooth tui
alias blth="bluetuith"  # cli : bluetoothctl
alias wifi="nmtui"      # cli : nmcli
 
# TheFuck eval
eval $(thefuck --alias fuck)
