export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
export EDITOR="code -w"

alias npm="NPQ_PKG_MGR=npm npq-hero"
alias pnpm="NPQ_PKG_MGR=pnpm npq-hero"
alias yarn="NPQ_PKG_MGR=yarn npq-hero"
alias tf="terraform"

# load bashcompinit for some old bash completions
autoload bashcompinit && bashcompinit

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# Load zinit before compinit
source /opt/homebrew/opt/zinit/zinit.zsh
# zplugin ice atload'!_zsh_git_prompt_precmd_hook' lucid
# zplugin load woefe/git-prompt.zsh

# Load pure theme
# zinit ice compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh'
# zinit light sindresorhus/pure

# Load starship theme
zinit ice as"command" from"gh-r" \
          atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
          atpull"%atclone" src"init.zsh"
zinit light starship/starship

# The following lines were added by compinstall
zstyle :compinstall filename '/Users/robbie/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/robbie/.lmstudio/bin"
# End of LM Studio CLI section

export PATH=$PATH:$HOME/.maestro/bin
