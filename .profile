export WORKON_HOME=/Users/mariuskueng/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
#source ~/projects/django_bash_completion
export PYTHONSTARTUP=~/.pythonrc
alias ll="ls -l"
alias mergemaster="git checkout master && git merge develop --no-ff && git checkout develop"
alias run="./manage.py runserver 0.0.0.0:8000"
export PATH=/usr/local/bin:/Users/mariuskueng/.virtualenvs/emb-website/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin
