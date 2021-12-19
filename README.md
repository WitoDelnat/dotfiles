# dotfiles

Configuration of tools and dotfiles.

## Usage

**Brewfile**

```
brew bundle install
```

Remarks

- fzf requires `$(brew --prefix)/opt/fzf/install`
- zsh-autosuggestions requires chmod +x

**Npmfile**

```
< Npmfile.txt xargs npm install -g
```

**K9s**

```
cp -r k9s ~/.k9s
```

**Vim**

```
cp vim/.vimrc ~/.vimrc
```

**Zsh**

```
cp zsh/.zshrc ~/.zshrc
```

**iTerm2**

```
cp -r iterm2 ~/.iterm2
```

Afterwards configure _Preferences > General > Preferences tab > Load preferences from a customfolder_ with _~/.iterm2/_.
