export WORKON_HOME=/Users/mariuskueng/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
#source ~/projects/django_bash_completion
export PYTHONSTARTUP=~/.pythonrc
alias ll="ls -l"
alias mergemaster="git checkout master && git pull origin master && git merge develop --no-ff && git checkout develop"
alias pullmaster="git checkout master && git pull origin master && git checkout develop"
alias runs="./manage.py runserver 0.0.0.0:8000"
alias digallink='dig +nocomments +noquestion +nostats interstate.nine.ch soho.nine.ch gotham.nine.ch' # usage: $ digallink nzz-campus.allink.ch
