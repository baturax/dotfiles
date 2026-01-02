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

alias acpi="echo '$(cat /sys/class/power_supply/BAT0/capacity)  $(cat /sys/class/power_supply/BAT0/status)'"
alias c="clear"
alias lg="lazygit"
alias m="mkdir -pv"
alias rm="rm -v"
alias mv="mv -v"
alias cp="cp -v"
alias t="touch"
alias cl="clear && l --color=always"
alias cls="clear && ls --color=always -A"
alias d="date"
alias ch="chmod +x"
alias sudo="sudo -E"
alias clear_history="echo '' > ~/.local/share/fish/fish_history"
alias nano="nvim"
alias lsblk="lsblk -p"

alias npm="bun"
alias npx="bunx"

alias gr="go run ."
alias gb="go build -v ."

alias pi="$s xbps-install"
alias pr="$s xbps-remove"
alias prc="$s xbps-remove -R"
alias prd="$s xbps-remove -RFf"
alias pis="xbps-Ss"
alias pu="$s xbps-install -Su"

function ta
    if string match -q '*.zip' $argv
        unzip $argv
    else
        tar -vxf $argv
    end
end

function l
	command eza --color=always --icons=always $argv
end

function ls
	command eza --color=always -A --icons=always $argv
end

function fish_greeting
	fastfetch -c examples/8.jsonc
end
