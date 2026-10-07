# fzf completion
if command -v fzf >/dev/null 2>&1 && [[ -f /usr/share/fzf/completion.zsh ]]; then
  source /usr/share/fzf/completion.zsh
fi

# zoxide
if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi

# Atuin
if command -v atuin >/dev/null 2>&1; then
  eval "$(atuin init zsh --disable-up-arrow)"
fi

# mise
# Keep this near the end of this file.
# mise activate should run after other tools modify PATH, so mise-managed
# tool versions can take precedence over system-installed tools.
if command -v mise >/dev/null 2>&1; then
  eval "$(mise activate zsh)"
fi
