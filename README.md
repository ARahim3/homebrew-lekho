# homebrew-lekho

Homebrew tap for [Lekho](https://github.com/ARahim3/Lekho) — the Avro Phonetic Bengali input method for macOS.

## Install

```sh
brew install --cask arahim3/lekho/lekho
```

Or tap first, then install:

```sh
brew tap arahim3/lekho
brew install --cask lekho
```

After install, enable it in **System Settings → Keyboard → Input Sources → Edit → +**, search for "Lekho" under Bengali, and add it. Switch with the Globe key or Ctrl+Space.

> Lekho is not signed with an Apple Developer ID. On first launch you may need to allow it in **System Settings → Privacy & Security → "Allow Anyway"**.

## Update

```sh
brew upgrade --cask lekho
```

## Uninstall

```sh
brew uninstall --cask lekho
brew untap arahim3/lekho
```

To also remove user data (preferences, learned suggestions):

```sh
brew uninstall --cask --zap lekho
```

## Requirements

- macOS 13 (Ventura) or later
- Apple Silicon (arm64)
