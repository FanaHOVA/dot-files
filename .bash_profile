if [ -f /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash ]; then
    . /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
fi

source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='[\w$(__git_ps1)]\$ '
export PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"

alias ..='cd ..'
alias ...='cd ../..'
alias pushf='git push origin -f'
alias septestdb='RAILS_ENV=test bundle exec rake db:drop db:setup'

rspecm() { 
  rspec spec/models/$1_spec.rb
}

rspecc() {
  rspec spec/controllers/$1_controller_spec.rb
}

rspecs() {
  rspec spec/services/$1_service_spec.rb
}

rspecw() {
  rspec spec/workers/$1_worker_spec.rb
}


[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
