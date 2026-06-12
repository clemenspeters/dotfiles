# Homebrew on Apple Silicon
if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Oh My Zsh, installed into ~/.dotfiles/.oh-my-zsh
export ZSH="$HOME/.dotfiles/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)

if [[ -f "$ZSH/oh-my-zsh.sh" ]]; then
  source "$ZSH/oh-my-zsh.sh"
fi

# nvm via Homebrew
export NVM_DIR="$HOME/.nvm"
if [[ -s "$(brew --prefix nvm 2>/dev/null)/nvm.sh" ]]; then
  source "$(brew --prefix nvm)/nvm.sh"
fi
if [[ -s "$(brew --prefix nvm 2>/dev/null)/etc/bash_completion.d/nvm" ]]; then
  source "$(brew --prefix nvm)/etc/bash_completion.d/nvm"
fi

# Small, generally useful aliases
alias gfc="git fetch && git checkout"
alias nb="npm run build"
alias no="npm outdated"
alias nt="npm run test"
alias nv="nvim"
alias sz="source ~/.zshrc"
alias vz="nvim ~/.zshrc"

# Generate a 24-character password, print it, and copy it to the clipboard.
getPassword () {
  local new_password
  new_password=$(openssl rand -base64 24 | tr -d '/,+' | cut -c1-24)
  echo "$new_password"
  echo "$new_password" | pbcopy
}
alias gpw="getPassword"

# Jump words with Alt/Option in common terminal mappings.
bindkey "[C" forward-word
bindkey "[D" backward-word
