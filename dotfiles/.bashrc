# Homebrew (Apple Silicon)
eval "$(/opt/homebrew/bin/brew shellenv)"

# Prefer Python 3.11 shims (provides python, python3, pip, pip3, etc.)
export PATH="$(brew --prefix python@3.11)/libexec/bin:$PATH"
