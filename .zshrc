# ~/.zshrc

# Locale
export LANG=en_US.UTF-8

# --- Aliases ---
alias ll='eza -lah --color=auto'
alias ls='eza --color=auto'
alias tree='eza --tree --color=auto'
alias terminal='open -a Kitty'

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export PATH="/opt/pmk/env/global/bin:/opt/homebrew/bin:$PATH"

PROMPT='%F{blue}%n@debian:%~%f$ '

autoload -U up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey '^[[A' up-line-or-beginning-search    # Up
bindkey '^[[B' down-line-or-beginning-search  # Down
bindkey '^[OA' up-line-or-beginning-search    # Up (application mode)
bindkey '^[OB' down-line-or-beginning-search  # Down (application mode)
[[ -n "${terminfo[kcuu1]}" ]] && bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
[[ -n "${terminfo[kcud1]}" ]] && bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
