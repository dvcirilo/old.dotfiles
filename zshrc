# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="dvcirilo"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Defining text editor 
export EDITOR=vim

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# As said
 DISABLE_AUTO_TITLE="true"

# Uncomment to change how many often would you like to wait
# before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13
#
# Which plugins would you like to load?
# (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vi-mode shrink-path)

# Sourcing oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Aliases
alias ll="ls -la"
alias la="ls -a"

# Hashes to most used dirs.
setopt cdablevars
hash -d ifrn="$HOME/Dropbox/ifrn/"
hash -d phd="$HOME/Dropbox/phd/"
hash -d doutorado="$HOME/Dropbox/phd/"

# Search history of typed command with up/down keys
bindkey "${terminfo[kcuu1]}" up-line-or-search
bindkey "${terminfo[kcud1]}" down-line-or-search

# Source EDA env functions
source $HOME/.dotfiles/eda_envs.sh

# To pass env to sudo when running tlmgr do:
# sudo env PATH="$PATH" tlmgr path add

# To invoke root shell keeping env
# sudo -sE

# Add texlive to path if it exists
if [ -d /usr/local/texlive/2019/bin/x86_64-linux ]; then
    PATH=$PATH:/usr/local/texlive/2019/bin/x86_64-linux # Add Latex to path
fi
