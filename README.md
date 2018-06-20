
# Some of my dotfiles

And notes, because i always keep losing them!
While i set up a mint VM and reworked alot of the files here. 

## Terms and Tools

Some Terminology and Tools:

__ZSH Shell (or why not Bash)__

The folder dot/zsh/ keeps the zsh stuff.  The zshrc.zsh is the one meant to be
linked as *~/.zshrc*. 

__Antigen__

Manages what oh-my-zsh used to do. Now i use antigen to better manage zsh plugins.  

http://antigen.sharats.me/
https://github.com/zsh-users/antigen

Find plugins from ohmyzsh: https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins

__Spaceship Prompt__ 

A nice ZSH prompt/tool/config (whatever) thing: https://denysdovhan.com/spaceship-prompt/


Displays useful information in the shell about git and many other things, eg. aws named cli profiles:

https://docs.aws.amazon.com/cli/latest/userguide/cli-multiple-profiles.html

__pyenv manages python versions__

Copy/clone the pyenv folder into ~/.pyenv and set/rest environment
vars PYENV_ROOT and PATH to have pyenv installed. Now install in shell by
calling penv init in shells startup here .zshrc 
Way down of the file since it modifies PATH. 

    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PATH:$PYENV_ROOT/bin"
    eval "$(pyenv init -)"

The global version for pyenv is written down to $PYENV_ROOT/.version (pyenv global)


__fzf and fstash__ 

Some realy nice tools that actually are the reason i always wanted to properly learn zsh. Initialy i used fzf only for 
a nice revers shell history search.

See the Website yourself: https://github.com/junegunn/fzf

fstash is a zsh function that uses fzf. See the fzf wiki for more:
https://github.com/junegunn/fzf/wiki/examples