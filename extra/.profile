export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
export PATH="$PATH:$HOME/.local/bin"
#export PATH="$PATH:$HOME/.node/bin"
#export PATH="$PATH:$HOME/.cargo/bin"
#export PATH="$PATH:$HOME/.local/share/bob/nvim-bin"

export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state/
export XDG_CACHE_HOME=$HOME/.cache
export XDG_BIN_HOME=$HOME/.local/bin/

if [ -z "$XDG_RUNTIME_DIR" ]; then
	XDG_RUNTIME_DIR="/tmp/$(id -u)-runtime-dir"

	mkdir -m 0700 "$XDG_RUNTIME_DIR"
	export XDG_RUNTIME_DIR
fi

export GOPATH="$XDG_DATA_HOME"/go
export GOMODCACHE="$XDG_CACHE_HOME"/go/mod
export GOBIN="$XDG_BIN_HOME/"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export JAVA_HOME="$XDG_DATA_HOME"/java/jetbrains-21
export PATH="$JAVA_HOME/bin:$PATH"

export QT_FONT_DPI=96
export QT_QPA_PLATFORM="wayland"
export ELECTRON_OZONE_PLATFORM_HINT="auto"
export QT_QPA_PLATFORMTHEME="qt6ct"

export ELECTRON_OZONE_PLATFORM_HINT="wayland"

export HISTFILE=$XDG_CACHE_HOME/shellhistory
export https="https:/"
export gh="$https/github.com"

export MANPAGER="bat"
export DIPLAY="nvim"

ANDROID_SDK_ROOT="/home/bai/.local/share/android"
ANDROID_USER_HOME="/home/bai/.local/share/android/tmp"

# export GPG_TTY=$(tty)

export MAKEFLAGS="-j8"
export CFLAGS="-O3 -pipe -march=native"
export CXXFLAGS="-O3 -pipe -march=native"
