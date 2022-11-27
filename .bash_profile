# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

if [ -e ~/.local/bin ]; then
	PATH=~/.local/bin:$PATH
fi

if [ -e ~/bin ]; then
	PATH=~/bin:$PATH
fi

# PATH=$PATH\:~/.cargo/bin

if [ -e ~/.oh-my-bash ]; then
	PATH=~/.oh-my-bash:$PATH
fi

export PATH

[[ $- == *i* ]] && stty -ixon
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export LC_ALL=en_US.UTF-8
