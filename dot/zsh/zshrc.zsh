export PATH="/usr/local/bin:/usr/local/go/bin:/usr/bin:/bin:/usr/sbin:/sbin"
#export PATH="/Users/msch/Library/Python/2.7/bin:$PATH"
#export PATH="/Users/msch/gosrc/bin:/Users/msch/bin:$PATH"
#export MANPATH="/usr/local/man:$MANPATH"
#export GOPATH=$HOME/gosrc
#export GOBIN=$GOPATH/bin

###############################
# Antigen
# Load plugins from https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins
source ~/src/dotfiles/dot/zsh/antigen.zsh
antigen use oh-my-zsh
 
antigen bundle zsh-users/zsh-syntax-highlighting # https://github.com/zsh-users/zsh-syntax-highlighting
antigen bundle git
#antigen bundle pyenv
antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship 
antigen apply


###############################
# Spaceship prompt configs
#export SPACESHIP_TIME_SHOW=true

###############################



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

#powerline-config tmux setup
#export DISABLE_AUTO_TITLE='true'
#export EDITOR='vim'

#bindkey '[D' beginning-of-line
#bindkey '[C' end-of-line


# There is propably a better way
#source /Users/msch/src/dotfiles/dot/zsh/tmux_functions.zsh

#fpath=(/usr/local/share/zsh-completions $fpath)


#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Setup cdg function shell bookmarks with fzf
# https://dmitryfrank.com/articles/shell_shortcuts
# ------------------
#unalias cdg 2> /dev/null
#cdg() {
   #local dest_dir=$(cdscuts_glob_echo | fzf )
   #if [[ $dest_dir != '' ]]; then
      #cd "$dest_dir"
   #fi
#}
#export -f cdg > /dev/null

#cdg-add () {
    #local curr_dir="${PWD} # $*"
    #if ! grep -Fxq "$curr_dir" ~/.cdg_paths; then
        #echo "$curr_dir" >> ~/.cdg_paths
    #fi
#}

#eval "$(pyenv init -)"
#export HOMEBREW_GITHUB_API_TOKEN="450bc6672beb266581a2e6c1036db345c6dc2241"
# export PATH="/usr/local/opt/ruby@2.3/bin:$PATH"
