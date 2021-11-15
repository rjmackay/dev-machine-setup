export PATH="/Users/robbie/brew/bin:/Users/robbie/bin:$PATH"
export EDITOR="code -n -w"
export AWS_SDK_LOAD_CONFIG=1

# Random colour settings
$HOME/bin/term-colours

setopt APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
export HISTSIZE=10000
export SAVEHIST=5000

# Setup asdf before zsh so it 
[ -s "$(brew --prefix asdf)/asdf.sh" ] && . $(brew --prefix asdf)/asdf.sh