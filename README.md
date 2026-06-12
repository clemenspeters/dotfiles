# .dotfiles

Small macOS setup focused on shell, Git, iTerm2, VS Code, and lightweight CLI tools.

## New Mac setup

Clone repo into a hidden directory:

```shell
git clone https://github.com/clemenspeters/dotfiles.git ~/.dotfiles
```

Install Homebrew if needed:

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew doctor
```

Install the curated software list:

```shell
brew bundle --file ~/.dotfiles/Brewfile
```

Install Oh My Zsh into this dotfiles directory:

```shell
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.dotfiles/.oh-my-zsh
```

Create the nvm directory expected by Homebrew's nvm package:

```shell
mkdir -p ~/.nvm
```

Create symlinks in the Home directory to the real files in the repo:

```shell
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.zshenv ~/.zshenv
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```

You can use `.zshenv` for values you don't want to commit since it's changes are ignored (using `git update-index --skip-worktree .zshenv`).  
If you want to commit changes to that file use `git update-index --no-skip-worktree .zshenv` and to see all skipped files use `git ls-files -v . | grep ^S`.

## Optional VS Code settings

Review the files in `.vscode/` before linking them. If they still match your current preferences:

```shell
ln -f -s ~/.dotfiles/.vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -f -s ~/.dotfiles/.vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
```

## Homebrew maintenance

To recreate the Brewfile from the current machine:

```shell
brew bundle dump --describe
```

To update your Brewfile run:

```shell
brew bundle dump --describe --force
```

## macOS Finder settings

Show all file extensions in Finder:

```shell
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
```

Show hidden files and folders in Finder:

```shell
defaults write com.apple.Finder AppleShowAllFiles true && \
killall Finder
```

## GitHub setup

Generate an SSH keypair if you do not already have one:

```shell
ssh-keygen -t ed25519 -C "13015002+clemenspeters@users.noreply.github.com"
```

Log in to GitHub CLI:

```shell
gh auth login
```

## Optional GCP setup

Only run this after installing `google-cloud-sdk`:

```shell
gcloud auth login
```

Authenticate Docker for Google Container Registry. See: <https://cloud.google.com/container-registry/docs/advanced-authentication#gcloud-helper>

```shell
gcloud auth configure-docker
```

## Learn more

[https://www.youtube.com/watch?v=r_MpUP6aKiQ&t=227s](https://www.youtube.com/watch?v=r_MpUP6aKiQ&t=227s)

## Credits

[https://github.com/eieioxyz/Beyond-Dotfiles-in-100-Seconds](https://github.com/eieioxyz/Beyond-Dotfiles-in-100-Seconds)
