# dotfiles

Personal dotfiles managed by [chezmoi](https://www.chezmoi.io/).

## Included

- zsh
- Antidote
- Starship
- Atuin
- fzf
- zoxide

## Install

### macOS prerequisites

Install [Homebrew](https://brew.sh/) first, then install chezmoi and the tools initialized by these dotfiles:

```bash
brew install git chezmoi antidote starship atuin fzf zoxide mise
```

macOS already includes zsh.

```bash
chezmoi init --apply https://github.com/orangesobeautiful/dotfiles.git
```

## Notes

Local machine-specific settings should be placed in:

```text
~/.config/zsh/local.zsh
```

This file is not tracked by this repository.
