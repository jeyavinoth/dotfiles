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

# ================================
# Custom theme with af-magic base
# ================================

# Show virtualenv in place of username@hostname
VIRTUAL_ENV_DISABLE_PROMPT=1

# Hook into af-magic theme to replace username@hostname with virtualenv
precmd() {
    # Print separator line that spans terminal width (dimmed/transparent look)
    print -P '%F{232}${(l:$COLUMNS::-:)}%f'

    if [[ -n $VIRTUAL_ENV ]]; then
        local venv_name=$(basename $VIRTUAL_ENV)
        local user_host='%{$fg[green]%}(%{$fg[yellow]%}'${venv_name}'%{$fg[green]%})%{$reset_color%}: '
    else
        # local user_host='%{$fg[cyan]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%}: '
        local user_host=''
    fi

    PROMPT="${user_host}%{$fg[blue]%}%B%~%b%{$reset_color%}\$(git_prompt_info) %{$fg[red]%}%(!.#.»)%{$reset_color%} "
}
