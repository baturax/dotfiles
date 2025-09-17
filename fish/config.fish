# bai

alias gclone="git clone"
alias gclone1="git clone --depth 1"
alias gcloner="git clone --recursive"
alias gpush="git push"
alias gcommit="git commit"

alias c="clear"
alias lg="lazygit"
alias m="mkdir -pv"
alias rm="rm -v"
alias mv="mv -v"
alias ta="tar -vxf"
alias t="touch"

alias pi="pacman -S"
alias pr="pacman -R"
alias prc="pacman -Rcs"
alias prd="pacman -Rdd"

function l
	command ls --color=always $argv
end

function ls
	command ls --color=always -A $argv
end

function fish_greeting
    gofetch
end
