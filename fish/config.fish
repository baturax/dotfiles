   #  Git
alias gclone="git clone"
alias gpush="git push"
alias gpull="git pull"
alias gcommit="git commit"

   #  System
alias pi="sudo pacman -S"
alias pu="sudo pacman -Suy"
alias pr="sudo pacman -R"
alias prc="sudo pacman -Rnsc"
alias prd="sudo pacman -Rdd"

   #  Misc
alias ls="eza --color=always --color-scale-mode=gradient --icons=always --hyperlink -a --group-directories-first -s=Extension"
alias cat="bat"
alias ch="chmod +x"
alias mc="meson compile"
alias man="batman"
alias c="printf '\033[2J\033[3J\033[1;1H'"

   #  Shortcut
alias free="free -h"
alias r="rm -rfiv"
alias m="mkdir -pv"

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
    fastfetch -c examples/8.jsonc
end

   #  Cd verbose
function cd
   set -l prev_pwd (pwd)
   if builtin cd $argv
   printf '%s -> %s\n' $prev_pwd (pwd)
   end
end
