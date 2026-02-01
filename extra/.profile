export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
export PATH="$PATH:$HOME/.local/bin"

export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state/
export XDG_CACHE_HOME=$HOME/.cache
export XDG_BIN_HOME=$HOME/.local/bin/

export PATH="$PATH:$XDG_DATA_HOME/flutter/bin"

if [ -z "$XDG_RUNTIME_DIR" ]; then
	XDG_RUNTIME_DIR="/tmp/$(id -u)-runtime-dir"

	mkdir -m 0700 "$XDG_RUNTIME_DIR"
	export XDG_RUNTIME_DIR
fi

export GOPATH="$XDG_DATA_HOME"/go
export GOMODCACHE="$XDG_CACHE_HOME"/go/mod
export GOBIN="$XDG_BIN_HOME/"

export BUN_INSTALL="$XDG_DATA_HOME/bun"
export PATH="$BUN_INSTALL/bin:$PATH"

#game
export PROTON_FSR4_UPGRADE=1
export PROTON_FSR4_RDNA3_UPGRADE=1
export PROTON_XESS_UPGRADE=1
export PROTON_ENABLE_WAYLAND=1
export PROTON_NO_WM_DECORATION=1
export PROTON_ENABLE_HDR=1
export PROTON_USE_NTSYNC=1
export PROTON_LOCAL_SHADER_CACHE=0
export ENABLE_LAYER_MESA_ANTI_LAG=1
export PROTON_NO_STEAMINPUT=1

export QT_FONT_DPI=100
export QT_QPA_PLATFORM="wayland"
export ELECTRON_OZONE_PLATFORM_HINT="auto"
export QT_QPA_PLATFORMTHEME="qt6ct"

export ELECTRON_OZONE_PLATFORM_HINT="wayland"

export DOTNET_CLI_HOME="$XDG_DATA_HOME"/dotnet

export HISTFILE=$XDG_CACHE_HOME/shellhistory
export https="https:/"
export gh="$https/github.com"

export MANPAGER="bat"
export DIPLAY="nvim"

export GPG_TTY=$(tty)

export MAKEFLAGS="-j8"
export CFLAGS="-O3 -pipe -march=native"
export CXXLAGS="-O3 -pipe -march=native"
export RUSTFLAGS="-C target-cpu=native -C opt-level=3 -C codegen-units=1"

export ANDROID_USER_HOME="$XDG_DATA_HOME"/android
export ANDROID_HOME="$XDG_DATA_HOME"/android/sdk
export ANDROID_AVD_HOME="$XDG_DATA_HOME"/android/avd
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME/android"
alias adb='HOME="$XDG_DATA_HOME"/android adb'

export JAVA_HOME="$XDG_DATA_HOME"/jvm/jdk-21
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java

export GNUPGHOME="$XDG_DATA_HOME"/gnupg
