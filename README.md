# .dotfiles

Clone repo into new hidden directory:

```shell
git clone https://github.com/clemenspeters/dotfiles.git ~/.dotfiles
```

Create symlinks in the Home directory to the real files in the repo:

```shell
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.zshenv ~/.zshenv
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```

For vscode:

```shell
mkdir ~/.dotfiles/.vscode && \
mv ~/Library/Application\ Support/Code/User/settings.json ~/.dotfiles/.vscode/settings.json && \
mv ~/Library/Application\ Support/Code/User/keybindings.json ~/.dotfiles/.vscode/keybindings.json && \
ln -s ~/.dotfiles/.vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json && \
ln -s ~/.dotfiles/.vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
```

Install Homebrew, followed by the software listed in the Brewfile:

```shell
# These could also be in an install script.

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Then pass in the Brewfile location...
brew bundle --file ~/.dotfiles/Brewfile

# ...or move to the directory first.
cd ~/.dotfiles && brew bundle
```

To create your own Brewfile run:

```shell
brew bundle dump --describe
```

## Learn more

[https://www.youtube.com/watch?v=r_MpUP6aKiQ&t=227s](https://www.youtube.com/watch?v=r_MpUP6aKiQ&t=227s)

## Credits

[https://github.com/eieioxyz/Beyond-Dotfiles-in-100-Seconds](https://github.com/eieioxyz/Beyond-Dotfiles-in-100-Seconds)