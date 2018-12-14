source ~/.git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=true
export PS1='[🏀  \w$(__git_ps1)]\$ '

alias ..='cd ..'
alias ...='cd ../..'
alias gco='git checkout'
alias gp='git pull origin --rebase'
alias pushf='git push origin -f'
alias push='git push origin'
alias septestdb='RAILS_ENV=test bundle exec rake db:drop db:setup'
alias git-clean='git branch | grep -v "master\|staging" | xargs git branch -D'
alias dev='foreman start -f Procfile.dev'

rspecm() { 
  rspec spec/models/$1_spec.rb
}

rspecc() {
  rspec spec/requests/$1_controller_spec.rb
}

rspecs() {
  rspec spec/services/$1_service_spec.rb
}

rspecw() {
  rspec spec/workers/$1_worker_spec.rb
}

ulimit -n 1024

export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
