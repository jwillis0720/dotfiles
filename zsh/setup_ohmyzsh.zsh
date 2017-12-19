if [ -d "/dnas" ]; then
  ZSH_THEME="xiong-chiamiov-plus"
else
  ZSH_THEME="xiong-chiamiov-plus"
fi
export ZSH=$HOME/.oh-my-zsh
ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="mm/dd/yyyy"
if [[ `who | grep jwillis | awk '{print($NF)}'` == *"vpn"* ]]; then
    plugins=(vi-mode)
    ZSH_THEME="xiong-chiamiov"
else
    plugins=(git vi-mode)
fi


source $ZSH/oh-my-zsh.sh


##HISTORY
## Command history configuration
if [ -z "$HISTFILE" ]; then
    HISTFILE=$HOME/.zsh_history
fi

HISTSIZE=10000
SAVEHIST=10000

# Show history
case $HIST_STAMPS in
  "mm/dd/yyyy") alias history='fc -fl 1' ;;
  "dd.mm.yyyy") alias history='fc -El 1' ;;
  "yyyy-mm-dd") alias history='fc -il 1' ;;
  *) alias history='fc -l 1' ;;
esac

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data

#Common Enviroments
export SSH_KEY_PATH=$HOME/.ssh/rsa_id

#Common PATHS
export PATH=$PATH:$HOME/.dotfiles/bin
