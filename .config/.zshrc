# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

fastfetch -c ~/.fastfetch_conf.jsonc

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH=$HOME/.config/rofi/scripts:$PATH
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable. HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

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
  zsh-syntax-highlighting
  zsh-autosuggestions
  git
)

source $ZSH/oh-my-zsh.sh

Color_Off='\033[0m'       # Text Reset
White='\033[0;37m'        # White

echo -e "${White}           _                                        "
echo -e " _ _ _ ___| |___ ___ _____ ___    ___ _ _ _ ___ ___ "
echo -e "| | | | -_| |  _| . |     | -_|  | -_| | | | .'|   |"
echo -e "|_____|___|_|___|___|_|_|_|___|  |___|_____|__,|_|_|${Color_Off}"

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source ~/powerlevel10k/powerlevel10k.zsh-theme
#source ~/.config/zshrc.d/dots-hyprland.zsh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=$PATH:/home/chiko/.spicetify
#unifetch --ascii_distro Arch --color_blocks off 

alias hz144="wlr-randr --output eDP-1 --custom-mode 1920x1080@144"
alias hz60="wlr-randr --output eDP-1 --custom-mode 1920x1080@60"
alias cat="bat --theme OneHalfDark "
alias ls="eza -1lxh  -F --classify=always --color=always --icons=always --no-quotes --hyperlink --group-directories-first --no-user --git -@"
alias la="eza -1oxlhA -F --classify=always --color=always --icons=always --no-quotes --hyperlink --group-directories-first --no-user"
alias l="ls"
alias vim="nvim"
alias vi="nvim"
alias nv="nvim"
alias s='shutdown -P'
alias b="btop"
alias dgpu="supergfxctl -m Hybrid && gnome-session-quit --logout"
alias igpu="supergfxctl -m Integrated && gnome-session-quit --logout"
alias ff="fastfetch -c ~/.fastfetch_conf.jsonc"
alias nf="neofetch --disable gpu wm shell packages terminal wm_theme --cpu_speed off --cpu_cores off --distro_shorthand on --gtk2 off --gtk3 off --bold on --color_blocks off --colors 4 4 4 4 --ascii_distro arch_small --ascii_colors 4 7"
alias cls="clear && exec zsh"
alias y=yazi
alias lg=lazygit
alias exiftool="perl ~/Downloads/Image-ExifTool-12.97/exiftool"
alias cpu="cpufreqctl turbo get"
alias cpuoff="sudo cpufreqctl turbo set off && cpufreqctl turbo get "

alias home="cd ~"
alias docs="cd ~/documents"
alias pics="cd ~/pictures"
alias music="cd ~/music"
alias vids="cd ~/videos"
alias downloads="cd ~/downloads"

alias .rust="cd ~/documents/rust"
alias .go="cd ~/documents/go"
alias .ts="cd ~/documents/ts"
alias .gleam="cd ~/documents/gleam"

alias ..rust="cargo run --release"
alias ..go="go run main.go"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /home/chiko/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zshrc.d/auto-Hypr.sh

# bun completions
[ -s "/home/chiko/.bun/_bun" ] && source "/home/chiko/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh
. "/home/chiko/.deno/env"
# Created by `pipx` on 2024-10-20 01:45:11
export PATH="$PATH:/home/chiko/.local/bin"