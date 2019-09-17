#zmodload zsh/zprof
#
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

fpath=(/usr/local/share/zsh-completions $fpath)

source $HOME/.macshrc
source $HOME/.sq

export EDITOR='nvim'

# tmux
alias t='tmux'
alias tk='tmux kill-server'
alias tls='tmux ls'
alias ta='tmux a -t'
alias tn='tmux new -s'
alias tks='tmux kill-session'
alias tkst='tmux kill-session -t'
alias t0='tmux a -t 0'
alias t1='tmux a -t 1'
alias t2='tmux a -t 2'
alias ts='tmux source-file ~/.tmux.conf'

# scala
# For syntax highlighting for just scala console
scalaargs='-Dscala.color'
alias s11='$HOME/scala-2.11.8/bin/scala $scalaargs'
# ammonite
alias s12='$HOME/scala-2.12.6/bin/scala'

# haskell
alias sb='stack build'
alias sc='stack clean'
alias se='stack exec'
alias seg='stack exec ghci'
alias ser='stack exec runhaskell'
alias she='stack help'
alias si='stack install'
alias st='stack test'
# for quick edits or viewing haskell files in neovim (may as well have syntax highlighting and
# all the other goodies
alias hdevtools='stack exec --no-ghc-package-path hdevtools --'

alias hp='rm *.cabal; stack exec -- hpack'

# c
ccf() {
  cc -Wall -o $1 "$1.c"
}

# linux
alias cx='chmod +x'
alias c='curl'
alias src='source'
alias p='ping google.com'
alias w='which'

# programs
alias v='nvim'
alias g='git'
alias gi='gist'
alias s='ssh'
alias h='http'
alias m='mongo'
alias e='emacs -nw'
alias r='ranger'
tr() {
  mkdir -p "$(dirname "$1")"
  touch "$1"
}

# docker
alias dc='docker'
alias di='docker images'
alias dl='docker logs'
alias dps='docker ps'
alias db='docker build'
alias dr='docker run'
alias dcl='docker container ls'
alias dei='docker exec -it'

# kubernetes
# a lot of these come form kubectl oh-my-zsh plugin
alias k='kubectl'
alias kgds='k get daemonsets'
alias kgsa='k get serviceaccounts'
alias kdn='k describe nodes'
alias kgr='k get roles'
alias kgcr='k get clusterroles'
alias kgrb='k get rolebindings'
alias kgcrb='k get clusterrolebindings'
alias kdcrb='k describe clusterrolebinding'
alias kghpa='k get hpa'
keb () { k exec -it $1 bash }
# delete prometheus-operator crds
kdcrds () {
  k delete crd prometheuses.monitoring.coreos.com
  k delete crd prometheusrules.monitoring.coreos.com
  k delete crd servicemonitors.monitoring.coreos.com
  k delete crd alertmanagers.monitoring.coreos.com
}

loginEcr() {

  if [ -z ${TWC_OKTA_AWS+x} ]; then
    >&2 echo "Must setup https://github.com/TheWeatherCompany/twc-okta_aws_login and point TWC_OKTA_AWS to the path of its directory"
    return
  fi

  if [ ! -z "$1" ]; then
    python3 $TWC_OKTA_AWS/okta_aws_login.py
    eval $(aws --profile $1 ecr get-login --no-include-email)
  fi
}

function kubectl() {
  if ! type __start_kubectl >/dev/null 2>&1; then
      source <(command kubectl completion zsh)
  fi

  command kubectl "$@"
}
# List containers in pod
# kubectl get pods --all-namespaces -o=jsonpath="{..image}" -l app=grafana
# Ssh in to specific container
# kubectl exec -it plinking-maltese-grafana-7bf8b94778-2lnbc -c grafana -- /bin/bash
alias kctx='kubectx'
alias kns='kubens'

# helm
alias h='helm'
alias hi='helm install'
alias hl='helm ls'
alias hla='helm ls --all'
alias hu='helm upgrade'
alias hd='helm delete'
alias hdp='helm delete --purge'
alias hdr='helm install --debug --dry-run'
alias hp='helm push'
alias hra='helm repo add'
alias hrl='helm repo list'
alias hru='helm repo update'
alias hrr='helm repo remove'
alias hs='helm search'
alias hsc='helm search chartmuseum'

# golang
#export PATH="$PATH:$HOME/go/bin"
export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$(go env GOPATH)
# shouldnt need to set:
# export GOROOT="$(brew --prefix golang)/libexec"
alias gb='go build'
alias gba='go build ./...'
alias gi='go install'
alias gc='go clean'
alias gt='go test'
alias gta='go test ./...'
alias gg='go get'
alias ggu='go get -u'

# gpg
export GPG_TTY=`tty`
alias gpglk='gpg --list-keys'
alias gpglsk='gpg --list-secret-keys'
alias gpgi='gpg --import'

# git-secret
alias gsc='g secret clean'
alias gsl='g secret list'
alias gsr='g secret remove'
alias gsa='g secret add'
alias gsh='g secret hide'

# set up git project
gcl1 () {
  mkdir $1
  cd $1
  git init
  git remote add origin $2
  git config core.sshCommand "ssh -i ~/.ssh/$3 -F /dev/null"
  cd ..
}

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

### Gets rid of permission errors on oh-my-zsh startup
ZSH_DISABLE_COMPFIX=true

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
plugins=( git git-extras )
# zsh is already slow AF so here's plugins I dont currently absolutely need
# kubectl docker kube-ps1 helm

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

# Makes prompt only show current dir
prompt_context(){
   prompt_dir(){
       prompt_segment blue black '%1/'
   }
}

if [ "$TMUX" = "" ]; then tmux; fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# added by travis gem
[ -f /Users/amilkov/.travis/travis.sh ] && source /Users/amilkov/.travis/travis.sh

#zprof
