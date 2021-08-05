# Lines configured by zsh-newuser-install

# zplug plugins
source /usr/share/zsh/scripts/zplug/init.zsh 

zplug "themes/wedisagree", from:oh-my-zsh, as:theme
zplug "Tarrasch/zsh-autoenv"
zplug "lukechilds/zsh-nvm"
for l in bzr compfix completion correction diagnostics directories\
	"functions" git grep "history" key-bindings misc nvm prompt_info_functions\
	spectrum theme-and-appearance termsupport; do
	zplug "lib/${l}", from:oh-my-zsh ;
done
oh_my_zsh_plugs=(aws archlinux git themes pass kubectl rbenv cargo tmux)
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

export LYNX_CFG=$HOME/.config/lynx/lynx.cfg

export LIBVIRT_DEFAULT_URI=qemu:///system

zplug load

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
unalias k
