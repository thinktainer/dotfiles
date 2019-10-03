# Lines configured by zsh-newuser-install

# zplug plugins
source /usr/share/zsh/scripts/zplug/init.zsh 

zplug "themes/wedisagree", from:oh-my-zsh, as:theme
zplug "Tarrasch/zsh-autoenv"
for l in bzr compfix completion correction diagnostics directories\
	"functions" git grep "history" key-bindings misc nvm prompt_info_functions\
	spectrum theme-and-appearance; do
	zplug "lib/${l}", from:oh-my-zsh ;
done
oh_my_zsh_plugs=(aws git themes pass kubectl rbenv cargo)
for p in $oh_my_zsh_plugs; do
	zplug "plugins/${p}", from:oh-my-zsh;
done
# end zplug plugins

bindkey -e

export LANG=en_US.UTF-8

#Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='vim'
else
	export EDITOR='nvim'
fi

path=(
	$GOPATH/bin
	$HOME/.rbenv/bin
	$HOME/.rbenv/shims
	$HOME/.pyenv/shims
	$HOME/.cargo/bin
	$path
)
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
eval "$(pyenv init -)"

#export TERM='alacritty'

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

fpath=(~/.zfunc $fpath)
# Autoload all shell functions from all directories in $fpath (following
# symlinks) that have the executable bit on (the executable bit is not
# necessary, but gives you an easy way to stop the autoloading of a
# particular shell function). $fpath should not be empty for this to work.
for func in $^fpath/*(N-.x:t); autoload $func

# automatically remove duplicates from these arrays
typeset -U path cdpath fpath manpath

if [[ -r ~/.aliases ]]; then
	source ~/.aliases
fi


export LYNX_CFG=$HOME/.config/lynx/lynx.cfg

# OPAM configuration

#export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
#. /home/thinktainer/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

export LIBVIRT_DEFAULT_URI=qemu:///system

zplug load
#source /usr/share/nvm/init-nvm.sh

if type "etcdctl" > /dev/null; then
	export ETCDCTL_API=3
fi

if [ -f $HOME/.aliases ]; then
	. $HOME/.aliases
fi

if (( $+commands[task] )); then
	echo "your tasks"
	task next
fi
[ -z "$NVM_DIR" ] && export NVM_DIR="$HOME/.nvm"
source /usr/share/nvm/nvm.sh
source /usr/share/nvm/bash_completion
source /usr/share/nvm/install-nvm-exec
