   #  Git
alias gclone="git clone"
alias gpush="git push"
alias gpull="git pull"
alias gcommit="git commit"
alias gsa="git submodule add"

   #  System
alias pi="sudo pacman -S --needed"
alias pu="sudo pacman -Suy"
alias pr="sudo pacman -R"
alias prc="sudo pacman -Rnsc"
alias prd="sudo pacman -Rdd"

   #  Misc
alias l="eza --color=always --color-scale-mode=gradient --icons=always --hyperlink --group-directories-first -s=Extension"
alias ls="eza --color=always --color-scale-mode=gradient --icons=always --hyperlink -a --group-directories-first -s=Extension"
#alias cat="bat"
alias mc="meson compile"
#alias man="batman"
alias df="duf"
alias c="printf '\033[2J\033[3J\033[1;1H'"
alias c_history="nvim $HOME/.local/share/fish/fish_history"

   #  Shortcut
alias free="free -h"
alias r="rm -rfiv"
alias m="mkdir -pv"
alias n="ninja"
alias ch="chmod +x"
alias lg="lazygit"
alias t="tar vxf"
alias ..="cd .."
alias ...="cd .. && cd .."
alias ....="cd .. && cd .. && cd .."
alias v="nvim"
alias v.="nvim ."
alias vim="nvim"
alias vi="nvim ."
alias gr="go run ."
alias gb="go build ."
alias to="touch "

function f
  su -c "$argv"
end

   #  Exports
export gh="https://github.com/"

   #  Functions

   # Better exit
function exit
    jobs -q; and disown (jobs -p)
    builtin exit
end

   # Fish_Greeting
function fish_greeting
    baifetch
end

set -gx GPG_TTY (tty)
