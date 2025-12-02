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
