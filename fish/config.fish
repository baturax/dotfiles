set s sudo

alias gclone="git clone"
alias gclone1="git clone --depth 1"
alias gcloner="git clone --recursive"
alias gpush="git push"
alias gcommit="git commit"
alias gpull="git pull"

alias config_fish="nvim $HOME/.config/fish/config.fish"

alias ..="cd .."
alias ...="cd .. && cd .."

alias c="clear"
alias lg="lazygit"
alias m="mkdir -pv"
alias rm="rm -v"
alias mv="mv -v"
alias ta="tar -vxf"
alias t="touch"
alias cl="clear && l --color=always"
alias cls="clear && ls --color=always -A"

alias v="nvim"
alias vi="nvim"
alias vim="nvim"

alias gr="go run ."
alias gb="go build ."

alias pi="$s xbps-install"
alias pu="$s xbps-install -Su"
alias pr="$s xbps-remove"
alias prc="$s xbps-remove -R"
alias prd="$s xbps-remove -RFf"

function l
	command ls --color=always $argv
end

function ls
	command ls --color=always -A $argv
end

function fish_greeting
    gofetch
end
