#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export XDG_CONFIG_HOME=~/.config/
export XDG_CACHE_HOME=~/.cache/
export XDG_DATA_HOME=~/.local/share/

export HTTP_PROXY=127.0.0.1:8118
export HTTPS_PROXY=127.0.0.1:8118

export SSH_AUTH_SOCK=(gpgconf --list-dirs agent-ssh-socket)

# ibus
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
ibus-daemon -drx

# haskell
export PATH=$PATH:~/.cabal/bin/

# golang
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin:/opt/node/bin

