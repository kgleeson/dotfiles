#
# Completion Settings
#
if (( $+commands[brew] )); then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

autoload -Uz compinit
compinit

# Completion Styling
zstyle ':completion:*:git-checkout:*' sort false
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
zstyle ':fzf-tab:*' fzf-flags --color=fg:1,fg+:2 --bind=tab:accept
zstyle ':fzf-tab:*' use-fzf-default-opts yes
zstyle ':fzf-tab:*' switch-group '<' '>'
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format '%B%d%b'
zstyle ':completion:*' group-name ''

#
# History Configuration
#
HISTSIZE=5000
SAVEHIST=$HISTSIZE
HISTFILE=$HOME/.zsh_history

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

#
# Keyboard Setting
#
bindkey -e

#
# Aliases
#
(( $+commands[eza] )) && alias ls='eza --icons=auto'
(( $+commands[bat] )) && alias cat=bat
(( $+commands[nvim] )) && alias vim=nvim
alias scp='rsync -avzh --progress -e ssh'


#
# Plugin Loading
#
if (( $+commands[brew] )); then
  source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

#
# Other
#
if (( $+commands[bat] )); then
    export MANPAGER="sh -c 'col -bx | bat -l man -p'"
    export MANROFFOPT="-c"
fi
if (( $+commands[nvim] )); then
    export EDITOR=nvim
fi
#
# Tool Initialization
#
if (( $+commands[fzf] )); then
  eval "$(fzf --zsh)"
  [ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh
  [ -f $HOME/.zsh_addons/fzf-tab/fzf-tab.plugin.zsh ] && source $HOME/.zsh_addons/fzf-tab/fzf-tab.plugin.zsh
fi

if (( $+commands[starship] )); then
  eval "$(starship init zsh)"
fi
