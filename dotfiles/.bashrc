# Homebrew (Apple Silicon)
eval "$(/opt/homebrew/bin/brew shellenv)"

# Make 'python' resolve to Homebrew's Python
if brew --prefix python >/dev/null 2>&1; then
  export PATH="$(brew --prefix python)/libexec/bin:$PATH"
elif brew --prefix python@3.9 >/dev/null 2>&1; then
  export PATH="$(brew --prefix python@3.9)/libexec/bin:$PATH"
fi
