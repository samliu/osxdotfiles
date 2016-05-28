# [LOCALCONF] Use local configs if they exist.
if [[ -s $HOME/.localrc ]] ; then source $HOME/.localrc ; fi

# [Golang] Use go config if it exists.
if [[ -s $HOME/.golangrc ]] ; then source $HOME/.golangrc ; fi

# [RVM] Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

# [oh-my-zsh] Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# [oh-my-zsh] Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
# export ZSH_THEME="robbyrussell"
export ZSH_THEME="arrow"

# [oh-my-zsh] Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# [oh-my-zsh] Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# [oh-my-zsh] Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# [oh-my-zsh] Which plugins would you like to load? (plugins can be found in 
# ~/.oh-my-zsh/plugins/*)
#
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

export DISABLE_AUTO_UPDATE=true

# [oh-my-zsh] Initializes oh-my-zsh.
source $ZSH/oh-my-zsh.sh

# Colors for ls.
export CLICOLOR=1
if [[ -x "`whence -p dircolors`" ]]; then
  eval `dircolors`
  alias ls='ls -F --color=auto'
else
  alias ls='ls -F'
fi

# User-level MOTD if it exists.
if [ -f "/usr/local/bin/dynmotd" ] ; then
    zsh /usr/local/bin/dynmotd
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# I create a folder called .npm-global and set it to be my npm install path.
# That way, I can install npm packages without giving privileges, and keep my
# local state nice and clean.
#
#  mkdir ~/.npm-global
#  npm config set prefix '~/.npm-global'
#
export PATH=~/.npm-global/bin:$PATH
