# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/sbin:$HOME/activator-dist-1.3.10/bin:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin:$HOME/apache-maven-3.3.9/bin:$HOME/apache-cassandra-2.1.15/bin:/usr/local/bin:$PATH

fpath=(/usr/local/share/zsh-completions $fpath)
#export JAVA_HOME=`/usr/libexec/java_home -v 1.7.0_79`
export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.8.0_102.jdk/Contents/Home'

export EDITOR='nvim'

alias v='nvim'
alias g='git'
alias src='source'
alias s='ssh'
alias t='tmux'
alias j8='export JAVA_HOME=`/usr/libexec/java_home -v 1.8`'
alias j7='export JAVA_HOME=`/usr/libexec/java_home -v 1.7`'
alias scala='scala -Dscala.color'

alias g7='export PATH=$HOME/.stack/snapshots/x86_64-osx/lts-6.26/7.10.3/bin:$HOME/.stack/programs/x86_64-osx/ghc-7.10.3/bin:$PATH'
alias g8='export PATH=$HOME/.stack/snapshots/x86_64-osx/lts-7.10/8.0.1/bin:$HOME/.stack/programs/x86_64-osx/ghc-8.0.1/bin:$PATH'
alias s11='export PATH=$HOME/scala-2.11.8/bin:$PATH'
alias s12='export PATH=$HOME/scala-2.12.0/bin:$PATH'

# Path to your oh-my-zsh installation.
export ZSH=/Users/amilkov/.oh-my-zsh

bindkey -v
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

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
plugins=(git brew sublime mvn jira)

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

prompt_context(){
  prompt_dir(){
    prompt_segment blue black '%1/'
  }
}


if [ "$TMUX" = "" ]; then tmux; fi 
