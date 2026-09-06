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

```bash
chezmoi init --apply git@github.com:orangesobeautiful/dotfiles.git
```

## Notes

Local machine-specific settings should be placed in:

```text
~/.config/zsh/local.zsh
```

This file is not tracked by this repository.
