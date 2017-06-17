# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kennethreitz"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-flow mercurial brew rbenv npm gem pip heroku fabric django bundler bower docker gnu-utils colored-man zsh-syntax-highlighting sublime zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration


# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-ocean.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

zstyle ':completion:*' insert-tab false

# binaries
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export PATH=/usr/local/bin:$PATH

# python virtualenvs
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export PYTHONSTARTUP=~/.pythonrc

# allink settings
source ~/.allink.sh

# shortcuts
alias ll="ls -l"
alias mergemaster='git checkout master && git pull && git merge --no-ff develop && git checkout develop'
alias pullmaster="git checkout master && git pull origin master && git checkout develop"
alias runs="./manage.py runserver 0.0.0.0:8000"
alias mergemaster='git checkout master && git pull && git merge --no-ff develop && git checkout develop'
alias cookiecut='cookiecutter https://github.com/allink/cookiecutter-allink-project'
alias ic="cd /Users/mariuskueng/Documents/Marius/Schule/FHNW/iCompetence/"
alias adsync="ruby ~/projects/turbo-octo-hipster/SyncMe/rSyncMeNow.rb"
alias rm=trash
alias senv="source env/bin/activate"
alias .senv="source .env/bin/activate"
alias solr_start='cd ~/projects/solr/example; java -jar start.jar'
alias dup="docker-compose up"
alias dbash="docker-compose exec web /bin/bash"
alias dstop="docker stop $(docker ps -a -q)"
alias staticbuild="npm run build && git add -A && git commit -am 'Static build'"
alias dmanage="docker-compose run --rm web python manage.py"

# youtube-dl soundcloud alias
alias soundcloud-dl="youtube-dl -o '%(title)s.%(ext)s'"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Add texlive (MacTeX) to path
export PATH=/usr/local/texlive/2014/bin/x86_64-darwin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# NVM
export NVM_DIR="/Users/mariuskueng/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
