function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting

end

starship init fish | source
if test -f ~/.cache/ags/user/generated/terminal/sequences.txt
    cat ~/.cache/ags/user/generated/terminal/sequences.txt
end

set -gx ANDROID_HOME $HOME/Android/Sdk
set -gx EDITOR zed

alias pamcan=pacman
alias hz144="wlr-randr --output eDP-1 --custom-mode 1920x1080@144"
alias hz60="wlr-randr --output eDP-1 --custom-mode 1920x1080@60"
alias cat="bat --theme OneHalfDark "
alias ls="eza -1lxh  -F --classify=always --color=always --icons=always --no-quotes --hyperlink --group-directories-first --no-user --git -@"
alias la="eza -1oxlhA -F --classify=always --color=always --icons=always --no-quotes --hyperlink --group-directories-first --no-user"
alias l="ls"
alias vim="nvim"
alias vi="nvim"
alias nv="nvim"
alias zed="zeditor"
alias code="zed"
alias s='shutdown -P'
alias b="btop"
alias dgpu="supergfxctl -m Hybrid && gnome-session-quit --logout"
alias igpu="supergfxctl -m Integrated && gnome-session-quit --logout"
alias ff="fastfetch -c ~/.fastfetch_conf.jsonc"
alias nf="neofetch --disable gpu wm shell packages terminal wm_theme --cpu_speed off --cpu_cores off --distro_shorthand on --gtk2 off --gtk3 off --bold on --color_blocks off --colors 4 4 4 4 --ascii_distro arch_small --ascii_colors 4 7"
alias cls="clear && exec fish"
alias y=yazi
alias lg=lazygit
alias exiftool="perl ~/Downloads/Image-ExifTool-12.97/exiftool"
alias cpu="cpufreqctl turbo get"
alias cpuoff="sudo cpufreqctl turbo set off && cpufreqctl turbo get "

alias home="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias docs="cd ~/Documents"
alias pics="cd ~/Pictures"
alias music="cd ~/Music"
alias vids="cd ~/Videos"
alias downloads="cd ~/Downloads"
alias xx="exit"

alias .rust="cd ~/Documents/rust"
alias .go="cd ~/Documents/go"
alias .ts="cd ~/Documents/ts"
alias .gleam="cd ~/Documents/gleam"
alias .odin="cd ~/Documents/odin"

alias ..rust="cargo run --release"
alias ..go="go run main.go"
alias mk="make"
alias super="chmod +wx"
alias emulator="QT_QPA_PLATFORM=xcb ~/Android/Sdk/emulator/emulator"

ff
# function fish_prompt
#   set_color cyan; echo (pwd)
#   set_color green; echo '> '
# end

# pnpm
set -gx PNPM_HOME "/home/ewan/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

fish_add_path -a /home/ewan/.vlayer/bin

export PATH="$PATH:/home/ewan/.risc0/bin"

fish_add_path -a /home/ewan/.foundry/bin