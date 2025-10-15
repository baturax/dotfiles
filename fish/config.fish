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
alias t="touch"
alias cl="clear && l --color=always"
alias cls="clear && ls --color=always -A"
alias d="date"
alias ch="chmod +x"

alias v="nvim"
alias vi="nvim"
alias vim="nvim"

alias gr="go run -v ."
alias gb="go build -v ."

alias pi="$s dnf install"
alias pu="$s dnf upgrade"
alias pr="$s dnf remove"
alias prc="$s dnf remove -y"
#alias prd="$s dnf -Rdd"

function ta
    if string match -q '*.zip' $argv
        unzip $argv
    else
        tar -vxf $argv
    end
end

function l
	command ls --color=always $argv
end

function ls
	command ls --color=always -A $argv
end

function fish_greeting
	fastfetch -c examples/8.jsonc
end
