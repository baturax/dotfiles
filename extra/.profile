export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/bai/.local/bin"
export PATH="$PATH:/home/bai/.node/bin/"
export PATH="$PATH:/home/bai/.java/jetbrains-21/bin"

export XDG_DATA_HOME=/home/bai/.local/share
export XDG_CONFIG_HOME=/home/bai/.config
export XDG_STATE_HOME=/home/bai/.local/state/
export XDG_CACHE_HOME=/home/bai/.cache
export XDG_BIN_HOME=/home/bai/.local/bin/

if [ -z "$XDG_RUNTIME_DIR" ]; then
	XDG_RUNTIME_DIR="/tmp/$(id -u)-runtime-dir"

	mkdir -m 0700 "$XDG_RUNTIME_DIR"
	export XDG_RUNTIME_DIR
fi

export GOPATH="$XDG_DATA_HOME"/go
export GOMODCACHE="$XDG_CACHE_HOME"/go/mod
export GOBIN="$XDG_BIN_HOME/"

export QT_FONT_DPI=96
export QT_QPA_PLATFORM="wayland"
export ELECTRON_OZONE_PLATFORM_HINT="auto"
export QT_QPA_PLATFORMTHEME="qt6ct"

export JAVA_HOME=/home/bai/.java/jetbrains-21

export HISTFILE=$XDG_CACHE_HOME/shellhistory
export https="https:/"
export gh="$https/github.com"

export MANPAGER="nvim +Man!"

tty=$(tty)
export GPG_TTY=$tty

export MAKEFLAGS="-j8"
export CFLAGS="-O3 -pipe -march=native"
export CXXFLAGS="-O3 -pipe -march=native"
