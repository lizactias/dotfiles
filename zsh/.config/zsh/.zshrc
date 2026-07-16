# history

HISTFILE="$XDG_STATE_HOME/zsh/history"
HISTSIZE=100000
SAVEHIST=100000

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS

# shell

setopt AUTOCD
setopt NOBEEP
setopt NUMERIC_GLOB_SORT

# completion

# load completion system
autoload -Uz compinit

# initialize completion with cached metadata file
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump"

# enable interactive completion menu selection
zstyle ':completion:*' menu select

# make completion case-insensitive
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# prompt

export STARSHIP_CONFIG="$ZDOTDIR/starship.toml"
eval "$(starship init zsh)"

# modular configuration

[[ -f "$ZDOTDIR/aliases.zsh" ]] && source "$ZDOTDIR/aliases.zsh"
[[ -f "$ZDOTDIR/functions.zsh" ]] && source "$ZDOTDIR/functions.zsh"
[[ -f "$ZDOTDIR/bindings.zsh" ]] && source "$ZDOTDIR/bindings.zsh"
[[ -f "$ZDOTDIR/plugins.zsh" ]] && source "$ZDOTDIR/plugins.zsh"
[[ -f "$ZDOTDIR/fzf.zsh" ]] && source "$ZDOTDIR/fzf.zsh"
