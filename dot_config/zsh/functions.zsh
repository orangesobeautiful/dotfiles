# Custom shell functions

# Prefer the platform's official command-not-found integration.
for file (
  /usr/share/doc/pkgfile/command-not-found.zsh
  /opt/homebrew/Library/Homebrew/command-not-found/handler.sh
  /usr/local/Homebrew/Library/Homebrew/command-not-found/handler.sh
  /opt/homebrew/Library/Taps/homebrew/homebrew-command-not-found/handler.sh
  /usr/local/Homebrew/Library/Taps/homebrew/homebrew-command-not-found/handler.sh
); do
  if [[ -r "$file" ]]; then
    source "$file"
    unset file
    break
  fi
done
unset file

if ! typeset -f command_not_found_handler >/dev/null 2>&1; then
  if [[ -x /usr/lib/command-not-found ]]; then
    command_not_found_handler() {
      /usr/lib/command-not-found -- "$1"
      return $?
    }
  elif [[ -x /usr/share/command-not-found/command-not-found ]]; then
    command_not_found_handler() {
      /usr/share/command-not-found/command-not-found -- "$1"
      return $?
    }
  fi
fi
