# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sporty_256"
#ZSH_THEME="agnoster"robbyrussell


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ll='ls -all'
alias mvne='mvn eclipse:eclipse'
alias mysqlstart='sudo /usr/local/mysql/./bin/mysqld_safe'
alias mysqlshut='/usr/local/mysql/bin/./mysqladmin shutdown -uroot -p'

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

export GROOVY_HOME=/usr/local/opt/groovy/libexec
export MAVEN_HOME=/Library/apache-maven-2.2.1
export ANT_HOME=/Library/apache-ant-1.8.4
export ANTX_HOME=/Users/ste7en/Documents/trunk/antx

# Start JAVA
export JAVA_6_HOME=`/usr/libexec/java_home -v 1.6`
# export JAVA_7_HOME=`/usr/libexec/java_home -v 1.7`
export JAVA_8_HOME=`/usr/libexec/java_home -v 1.8` 
# JDK 6
export JAVA_HOME=$JAVA_6_HOME
export CLASSPATH=.:$JAVA_HOME\lib\dt.jar:$JAVA_HOME\lib\tools.jar;
#alias  
alias jdk6='export JAVA_HOME=$JAVA_6_HOME && echo Set JDK 6'
alias jdk7='export JAVA_HOME=$JAVA_7_HOME && echo Set JDK 6'
alias jdk8='export JAVA_HOME=$JAVA_7_HOME && echo Set JDK 8'
# end JAVA  rm ${JAVA_HOME}/bin:

export PATH=${MAVEN_HOME}/bin:${ANT_HOME}/bin:${ANTX_HOME}/dist/antx/bin:$PATH

# export CLOUDENGINE_HOME=/Library/cloudengine-3.2.8.0

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

