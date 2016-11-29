PS1='🏈 [\w]: '
alias ..='cd ..'
alias ...='cd ../..'
alias pushf='git push origin -f'
alias septestdb='RAILS_ENV=test bundle exec rake db:drop db:setup'

rspec_by_kind() { 
  rspec spec/$1/$2_spec.rb
}

alias runspec=rspec_by_kind

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
