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

You can use `.zshenv` for values you don't want to commit since it's changes are ignored (using `git update-index --skip-worktree .zshenv`).  
If you want to commit changes to that file use `git update-index --no-skip-worktree .zshenv` and to see all skipped files use `git ls-files -v . | grep ^S`.

For vscode:

```shell
ln -f -s ~/.dotfiles/.vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -f -s ~/.dotfiles/.vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
```

## Homebrew

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

To update your Brewfile run:

```shell
brew bundle dump --describe --force
```

## Oh My Zsh

Install [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) running:

```shell
ZSH="$HOME/.dotfiles/.oh-my-zsh" && wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh
```

## Learn more

[https://www.youtube.com/watch?v=r_MpUP6aKiQ&t=227s](https://www.youtube.com/watch?v=r_MpUP6aKiQ&t=227s)

## Credits

[https://github.com/eieioxyz/Beyond-Dotfiles-in-100-Seconds](https://github.com/eieioxyz/Beyond-Dotfiles-in-100-Seconds)
