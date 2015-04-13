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
plugins=(git git-flow brew rbenv npm gem pip heroku fabric django bundler bower docker gnu-utils colored-man zsh-syntax-highlighting sublime)

source $ZSH/oh-my-zsh.sh

# User configuration


# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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

# shortcuts
alias ll="ls -l"
alias mergemaster="git checkout master && git merge develop --no-ff && git checkout develop"
alias pullmaster="git checkout master && git pull origin master && git checkout develop"
alias runs="./manage.py runserver 0.0.0.0:8000"
alias ic="cd /Users/mariuskueng/Documents/Marius/Schule/FHNW/iCompetence/"
alias resetversions="defaults delete com.blackpixel.versions FirstRunDate && defaults delete com.blackpixel.versions EZSBookmarksSelectionMask && defaults delete .GlobalPreferences com.blackpixel.versions.ezsRequiredToken && rm ~/.CF89AA64 && rm ~/Library/.FB64CF89"
alias ADSync="ruby ~/projects/turbo-octo-hipster/SyncMe/rSyncMeNow.rb"

# android sdk
export PATH=${PATH}:~/projects/java/adt-bundle/sdk/platform-tools:~/projects/java/adt-bundle/sdk/tools

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Add texlive (MacTeX) to path
export PATH=/usr/local/texlive/2014/bin/x86_64-darwin:$PATH

# Meteor cmd overwrite
alias meteor="JASMINE_BROWSER=PhantomJS meteor"

# set phantomjs browser
# export JASMINE_BROWSER=PhantomJS meteor

# MATLAB
export MATLAB_JAVA=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
alias matlab="/Applications/MATLAB_R2013a_Student.app/bin/matlab; exit;"
