set -o vi
alias ll="ls -al"

export DJANGO_SETTINGS_MODULE=udemy.settings.local

# node version manager
# export NVM_DIR="$HOME/.nvm"
# source "$(brew --prefix nvm)/nvm.sh"

# django tests
function test_int() { ./manage.py test $@ --settings=udemy.settings.test_integration --keepdb; }
function test_unit() { ./manage.py test $@ --settings=udemy.settings.test_unit; }

# pyenv
eval "$(pyenv init -)"
pyenv virtualenvwrapper

# git autocomplete
source $(brew --prefix)/etc/bash_completion

# git branch in bash
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
