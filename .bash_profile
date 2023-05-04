# .bash_profile

# inlcude ~/.bashrc if it exists 
if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# add scala bin dir to PATH if the user has it installed and the OS is Linux
if [[ -d "$HOME/.local/share/coursier/bin" && "$(uname | tr '[:upper:]' '[:lower:]')" = "linux" ]] ; then
	PATH="$PATH:$HOME/.local/share/coursier/bin"
fi

PATH="/usr/lib/rstudio-server/bin/quarto/bin:$PATH"
