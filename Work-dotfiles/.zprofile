eval "$(/opt/homebrew/bin/brew shellenv)"

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export ASDF_NODEJS_LEGACY_FILE_DYNAMIC_STRATEGY=latest_installed
