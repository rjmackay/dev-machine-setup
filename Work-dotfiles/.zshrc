export PATH="/Users/robbie/brew/bin:/Users/robbie/bin:$PATH"
export EDITOR="code -w"
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

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Setup asdf before zsh so it 
[ -s "/Users/robbie/brew/opt/asdf/asdf.sh" ] && . /Users/robbie/brew/opt/asdf/asdf.sh