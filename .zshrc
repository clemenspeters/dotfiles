# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/clemenspeters/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# # Path to your oh-my-zsh configuration.
#alias grunt='nocorrect grunt'
#alias restart_vb='sudo /Library/StartupItems/VirtualBox/VirtualBox restart'
alias gitl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset%n' --abbrev-commit --date=relative --branches --color"
#alias addjspe='git add cockpit/src/Shopmacher/App/PageEditorBundle/Resources/public/js/'
#alias tig='/Users/jb/bin/tig'
alias disable_spotlight='sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist'
alias reenable_spotlight='sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist'
alias vu='vagrant up'
alias vs='vagrant ssh'
alias vus='vagrant up && vagrant ssh'
alias tmuxs='tmux new-session -s shared'
alias tmuxa='tmux attach-session -t shared'
alias telegram='open "https://web.telegram.org/#/im"'
alias whatsapp='open "https://web.whatsapp.com/"'
alias nvimn='nvim +NERDTree'
alias nv='nvim +NERDTree'

# Manta
#
#export MANTA_URL=https://us-east.manta.joyent.com
#export MANTA_USER=johannesboyne
#export MANTA_KEY_ID=d2:2d:ca:f8:d4:e8:25:8e:4f:21:43:dd:f8:0f:fa:08
#
#function manta {
#  local alg=rsa-sha256
#  local keyId=/$MANTA_USER/keys/$MANTA_KEY_ID
#  now=$(date -u "+%a, %d %h %Y %H:%M:%S GMT")
#  local sig=$(echo "date:" $now | \
#    tr -d '\n' | \
#    openssl dgst -sha256 -sign $HOME/.ssh/mantatest_id_rsa | \
#    openssl enc -e -a | tr -d '\n')
#
#  curl -sS $MANTA_URL"$@" -H "date: $now"  \
#    -H "Authorization: Signature keyId=\"$keyId\",algorithm=\"$alg\",signature=\"$sig\""
#}

##export GOROOT=/usr/local/go
#export PATH=/Users/jb/Developing/mongodb-local-installation/bin:$PATH
#export PATH=/Users/jb/.local/bin:$PATH
#export PATH=/usr/local/packer:$PATH
#export GOPATH=/Users/jb/Developing/externalgocode/
#export PATH=/Users/jb/Developing/externalgocode/:$PATH
#export PATH=/usr/local/bin:$PATH
#export PATH="/usr/local/git/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:$PATH"

ulimit -n 1024

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"

# Docker
#export DOCKER_CERT_PATH=/Users/jb/.boot2docker/certs/boot2docker-vm
#export DOCKER_TLS_VERIFY=1
#export DOCKER_HOST=tcp://192.168.59.103:2376

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/local/MacGPG2/bin
#
#### Added by the Heroku Toolbelt
#export PATH="/usr/local/heroku/bin:$PATH"
#
#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#
#export PATH="$PATH:/Users/jb/Developing/elixir/bin"
#
#export GOPATH=/Users/jb/Developing/externalgocode/
#
##Terraform
#export PATH="$PATH:/Users/jb/Developing/terraform"
#
##ssh keys
##ssh-add ~/.ssh/id_rsa_zwtg &>/dev/null
