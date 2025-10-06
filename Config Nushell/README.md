# NuShell Terminal Setup

This setup provides a **clean, efficient, and visually pleasing terminal** environment using **NuShell** with Nerd Fonts support and Starship prompt.

---

## NuShell Configuration

### `env.nu`
- Adds custom paths (Homebrew, OrbStack) to your shell.
- Legacy file, loaded before `config.nu`.
- Mainly used for environment variables and startup tasks.

### `config.nu`
- Overrides default Nushell settings.
- Defines useful aliases for Git, Python, VSCode, and more:

```nu
alias cls = clear
alias ll = ls -l
alias gst = git status
alias gp = git pull
alias py = python3
alias vim = code
