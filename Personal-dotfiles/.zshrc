export PATH="/Users/robbie/brew/bin:/Users/robbie/bin:$PATH"
export EDITOR="subl -n -w"
# The following lines were added by compinstall

# zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle :compinstall filename '/Users/robbie/.zshrc'

# load bashcompinit for some old bash completions
autoload bashcompinit && bashcompinit

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# Load zinit before compinit
source /Users/robbie/brew/opt/zinit/zinit.zsh
zplugin ice atload'!_zsh_git_prompt_precmd_hook' lucid
zplugin load woefe/git-prompt.zsh

PROMPT='%B%80<..<%~ %b$(gitprompt)'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Setup asdf before zsh so it 
[ -s "$(brew --prefix asdf)/asdf.sh" ] && . $(brew --prefix asdf)/asdf.sh