#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export XDG_CONFIG_HOME=~/.config/
export XDG_CACHE_HOME=~/.cache/
export XDG_DATA_HOME=~/.local/share/

# export HTTP_PROXY=127.0.0.1:8118
# export HTTPS_PROXY=127.0.0.1:8118

export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

# ibus
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
# launched with sway/i3 config
# ibus-daemon -drx

# haskell
export PATH=$PATH:~/.cabal/bin/

# golang
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin:/opt/node/bin

# tig
export TIG_DIFF_OPTS="--histogram"

# wayland
export MOZ_ENABLE_WAYLAND=1
export _JAVA_AWT_WM_NONREPARENTING=1 # arduino

# esp32
export IDF_PATH=$HOME/github.com/espressif/esp-idf

# export the PATH to systemd unit, such as emacs daemon
systemctl --user import-environment PATH
