# Zsh Terminal Setup

This configuration sets up a **developer-friendly Zsh environment** with **Starship prompt**, **Homebrew**, and **OrbStack**.

---

## `.zshrc`

- Loads **Starship prompt** for a clean, informative terminal:

```zsh
eval "$(starship init zsh)"
```

## `.zprofile`

- Loads Homebrew environment:
  
  ```
  eval "$(/opt/homebrew/bin/brew shellenv)"
  ```
- Adds OrbStack CLI tools:
  ```
  source ~/.orbstack/shell/init.zsh 2>/dev/null || :
  ```
