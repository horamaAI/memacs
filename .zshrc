# Set path if required
#export PATH=$GOPATH/bin:/usr/local/go/bin:$PATH

# Aliases
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias grep='grep --color=auto'
alias ec="$EDITOR $HOME/.zshrc" # edit .zshrc
alias sc="source $HOME/.zshrc"  # reload zsh configuration
alias emacs='emacs -nw'
alias psmy='ps uxf'
alias ..='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'

# Set up the prompt - if you load Theme with zplugin as in this example, this will be overriden by the Theme. If you comment out the Theme in zplugins, this will be loaded.
autoload -Uz promptinit
promptinit
# prompt adam1            # see Zsh Prompt Theme below

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e
bindkey "^[[5~" history-beginning-search-backward
bindkey "^[[6~" history-beginning-search-forward
bindkey "^[[1;5D" backward-word # Ctrl-left
bindkey "^[[1;5C" forward-word  # Ctrl-right
bindkey "^[[1;3D" backward-word # Alt-left
bindkey "^[[1;3C" forward-word  # Alt-right
bindkey "^[#" pound-insert  # to comment current command

setopt histignorealldups sharehistory

# Keep 5000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

# zplug - manage plugins
source /usr/share/zplug/init.zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions"
zplug "junegunn/fzf"
zplug "themes/jonathan", from:oh-my-zsh, as:theme # As zsh theme

# plugins needed 
plugins=(git colored-man-pages docker docker-compose iterm2 node npm brew pip colorize macos pyenv colorize adb aws)

## Shell Integration and plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## Fix for Slow zsh-autosuggestions copy&paste
autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic
zstyle ':bracketed-paste-magic' active-widgets '.self-*'

# zplug - install/load new plugins when zsh is started or reloaded
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load --verbose

## Add libraries and includes
GMP_DIR="/opt/gmp-6.2.1"
GLPK_DIR="/opt/glpk-5.0"
IGRAPH_DIR="/opt/igraph-0.9.5"
export LD_LIBRARY_PATH=${GMP_DIR}:$LD_LIBRARY_PATH
export CPATH=${GMP_DIR}:$CPATH
export LD_LIBRARY_PATH=${GLPK_DIR}/lib:$LD_LIBRARY_PATH
export CPATH=${GLPK_DIR}/include:$CPATH
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
export CPATH=/usr/local/include/igraph:$CPATH

#BEGIN - GENERATED CONTENT, DO NOT EDIT !!!
  [ "$COMMON_ENV_DEBUG" = "1" ] && echo "Sourcing '$0' ..." >&2
  source "/home/myfirstdebianpc/Documents/repos/common_env/tools/shell/source/shellrc.sh"
#END - GENERATED CONTENT, DO NOT EDIT !!!

