# Homebrew Tap for PRX CLI

This is the official Homebrew tap for [prx](https://github.com/ravi-technologies/prx), an AI-powered code review CLI.

## Installation

```bash
brew tap ravi-technologies/tap
brew install prx
```

Or install directly:

```bash
brew install ravi-technologies/tap/prx
```

## Usage

```bash
export OPENAI_API_KEY="your-api-key"
prx              # Review latest commit
prx --staged     # Review staged changes
prx --help       # See all options
```

## Updates

```bash
brew update
brew upgrade prx
```
