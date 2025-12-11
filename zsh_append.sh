# Disable Python venv from modifying the prompt (we handle it manually)
export VIRTUAL_ENV_DISABLE_PROMPT=1

# Add virtualenv to prompt (shown at the front)
function virtualenv_prompt_info() {
  if [[ -n "$VIRTUAL_ENV" ]]; then
    echo "%{$fg[yellow]%}($(basename $VIRTUAL_ENV))%{$reset_color%} "
  fi
}

# Override the simple theme prompt to include virtualenv at the front
PROMPT='$(virtualenv_prompt_info)%(!.%{$fg[red]%}.%{$fg[green]%})%~$(git_prompt_info)%{$reset_color%} '

# LS
alias ll="ls -lhtr"
alias l="ls -lh"
alias lS="ls -lhSr"
alias la="ls -lha"

# Other general
alias rsync="rsync --progress"
# alias vim="nvim"
alias v="nvim"
alias view="nvim -R"
alias rm="rm -i"

# Git Aliases
alias gdt="git difftool"
alias gdtc="git difftool --cached"
alias gwt="git worktree"

# Tmux session / keybinds
alias o="sh ~/.dotfiles/custom_scripts/tmux-session.sh"

# Tmux Aliases
alias ta="tmux a -t"
alias tn="tmux new -s"
alias tl="tmux ls"

# Developer
# Build Tags
alias build_ctags="ctags -R --fields=+l --languages=python --python-kinds=-iv -f ./tags"

# alias that I commonly use
alias a="source ./.venv/bin/activate; python --version"


# Bind key 
bindkey -v

# =====================
# FZF
# =====================
export FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%'"

# fzf preview with bat for files, ls for directories
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --style=header,grid --line-range :300 {} 2>/dev/null || ls -la {}'"
export FZF_ALT_C_OPTS="--preview 'ls -la {}'"

# Source fzf keybindings and completion
source <(fzf --zsh)

# Custom fzf file widget that uses current word as initial query
fzf-file-widget-with-query() {
  local query="${LBUFFER##* }"
  local result=$(eval "$FZF_CTRL_T_COMMAND" | FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS $FZF_CTRL_T_OPTS" fzf --query="$query")
  if [[ -n "$result" ]]; then
    LBUFFER="${LBUFFER%$query}$result"
  fi
  zle reset-prompt
}
zle -N fzf-file-widget-with-query
bindkey '^L' fzf-file-widget-with-query

alias fo="find . -type f | fzf --bind 'enter:become(nvim {})'"

# fzf-tab configuration
# zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup
# Accept selection and trigger completion on enter
zstyle ':fzf-tab:*' accept-line enter
# Preview for files and directories
zstyle ':fzf-tab:complete:*:*' fzf-preview 'if [[ -d $realpath ]]; then ls -la $realpath; else bat --color=always --style=header,grid --line-range :300 $realpath 2>/dev/null || cat $realpath; fi'
# Continuous completion (descend into directories)
zstyle ':fzf-tab:*' continuous-trigger '/'
