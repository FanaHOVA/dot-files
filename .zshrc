alias drun='docker compose exec web'
alias ..='cd ..'
alias ...='cd ../..'
alias gco='git checkout'
alias gp='git pull origin --rebase'
alias pushf='git push origin -f'
alias push='git push --set-upstream origin'
alias git-clean='git branch | grep -v "master\|staging" | xargs git branch -D'

commit() {
  git add .
  git commit -m "$1"
  gp
  push
}

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="/usr/local/bin:$PATH:$HOME/.rvm/bin"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
