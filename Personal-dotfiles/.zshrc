# zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle :compinstall filename '/Users/robbie/.zshrc'

# load bashcompinit for some old bash completions
autoload bashcompinit && bashcompinit

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# Load zinit before compinit
source $(brew --prefix)/opt/zinit/zinit.zsh
zplugin ice atload'!_zsh_git_prompt_precmd_hook' lucid
zplugin load woefe/git-prompt.zsh

PROMPT='%B%80<..<%~ %b$(gitprompt)'
PROMPT+='%(?.%(!.%F{white}❯%F{yellow}❯%F{red}.%F{green})❯%f.%F{red}❯%f) '

autoload -Uz compinit
compinit