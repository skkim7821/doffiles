# Path to your oh-my-zsh installation.
export ZSH=/Users/skkim/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="fishy"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting brew npm history-substring-search textmate osx web-search rails ruby scala sbt vundle bower bundler capistrano gem gitignore history node nvm rbenv rsync docker)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
eval "$(rbenv init -)"

export NVM_DIR="/Users/skkim/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

nvm use stable

export EDITOR="/usr/local/bin/mate -w"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:/usr/local/go/bin"


alias betty="/Users/skkim/gitclone/betty/main.rb"
alias chromium="/Applications/Chromium.app/Contents/MacOS/Chromium"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias workflowy="chrome --app='https://workflowy.com'"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias dm="docker-machine"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

function gh_create_repo () {
    # print $1 : username
    # print $2 : project name
    # print $3 : description
    local user=`git config -l | grep github.user | sed 's/github.user=//'`
    eval "curl -u \"$user\" https://api.github.com/user/repos -d '{\"name\":\"$1\"}'"
}

function dmenv () {
    eval "$(docker-machine env $1)"
}

function dash () {
    eval "open dash://$1"
}
# alias 


# The next line updates PATH for the Google Cloud SDK.
source '/Users/skkim/gcloud/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/skkim/gcloud/google-cloud-sdk/completion.zsh.inc'
