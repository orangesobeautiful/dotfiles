# dotfiles

Personal dotfiles managed by [chezmoi](https://www.chezmoi.io/).

## Included

- zsh
- Antidote
- Starship
- Atuin
- fzf
- zoxide
- mise

## Install

### macOS prerequisites

Install [Homebrew](https://brew.sh/) first, then install chezmoi and the tools initialized by these dotfiles:

```bash
brew install git chezmoi antidote starship atuin fzf zoxide mise
```

macOS already includes zsh.

### Arch Linux prerequisites

On an up-to-date Arch Linux system, install zsh, chezmoi, and the tools initialized by these dotfiles:

```bash
sudo pacman -S --needed git chezmoi zsh zsh-antidote starship atuin fzf zoxide mise
```

`--needed` skips packages that are already installed and up to date. Antidote is packaged as `zsh-antidote` on Arch Linux.

### Apply the dotfiles

After installing the prerequisites for your platform, run:

```bash
chezmoi init --apply https://github.com/orangesobeautiful/dotfiles.git
```

Review any existing local configuration before applying; chezmoi may prompt you to resolve differences.

### Start using zsh

If zsh is not already your default shell, change it with:

```bash
chsh -s "$(command -v zsh)"
```

Log out and back in for the default shell change to take effect. To try the configuration in your current terminal without changing your default shell, run `zsh`.

## Notes

Local machine-specific settings should be placed in:

```text
~/.config/zsh/local.zsh
```

This file is not tracked by this repository.
