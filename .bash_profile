if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
  source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

alias ..='cd ..'
alias ...='cd ../..'
alias gco='git checkout'
alias gp='git pull origin --rebase'
alias pushf='git push origin -f'
alias push='git push --set-upstream origin'
alias septestdb='RAILS_ENV=test bundle exec rake db:drop db:setup'
alias git-clean='git branch | grep -v "master\|staging" | xargs git branch -D'
alias dev='foreman start -f Procfile.dev'
alias voyagerConsole='heroku run rails c -a the645app'
alias emailTemplates='cd "/Users/fana/Library/Group Containers/2E337YPCZY.airmail/Library/Application Support/it.bloop.airmail2/Airmail/General/Templates2"'

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

commit() {
  git add .
  git commit -m "$1"
  gp
  push 
}

dumpLightProd() {
  rake db:drop DISABLE_DATABASE_ENVIRONMENT_CHECK=1
  heroku pg:pull DATABASE 645app --exclude-table-data "versions;relateiq_list_backups;crunchbase_organizations;crunchbase_people;crunchbase_funding_rounds;score_breakdowns;crunchbase_acquisitions;crunchbase_ipos;delayed_jobs;repo_stargazers" --app the645app
  rake db:create
  rake expire_redis
}

dumpFullProd() {
  rake db:drop DISABLE_DATABASE_ENVIRONMENT_CHECK=1
  heroku pg:pull DATABASE 645app --exclude-table-data "relateiq_list_backups;crunchbase_people;versions;delayed_jobs;score_breakdowns" --app the645app
  rake db:create
  rake expire_redis
}

dumpDataRoom() {
  rake db:drop DISABLE_DATABASE_ENVIRONMENT_CHECK=1
  heroku pg:pull DATABASE lps_development --app the645lps
  rake db:create
}

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export NVM_DIR=~/.nvm
source ~/.nvm/nvm.sh
