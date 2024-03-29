# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kphoen"

export EDITOR='subl -w'
export LESS="R"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias gs='git status -sb'
alias mci='mvn clean install'
alias revpoms='find . -name "pom.xml" -exec git checkout --ours {} \;'
alias gfo="git fetch origin"
alias tcsappsdev='ssh davida@labappas3dev'
alias gprune='git remote prune origin && git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias ij='open -a /Applications/IntelliJ\ IDEA\ 15.app .'

__git_files () { 
    _wanted files expl 'local files' _files 
}


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
plugins=(git mvn git-extras vi-mode)
#plugins=(git mvn git-extras)

source $ZSH/oh-my-zsh.sh

export HOMEBREW_GITHUB_API_TOKEN=$(cat ~/.dotfiles/homebrew_api_token)

# Customize to your needs...
export PATH=$PATH:~/bin


#THIS MUST BE AT THE END OF THE FILE FOR JENV TO WORK!!!
[[ -s "/Users/davida/.jenv/bin/jenv-init.sh" ]] && source "/Users/davida/.jenv/bin/jenv-init.sh" && source "/Users/davida/.jenv/commands/completion.sh"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

