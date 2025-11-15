# config.nu
#
# Installed by:
# version = "0.108.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings, 
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R

# ----------------------------
# NUSHELL LOADING FOR STARSHIP
# ----------------------------
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

# ----------------------------
# ALIAS
# ----------------------------

# ----------------------------
# TERMINAL / NAVIGATION
# ----------------------------

# Efface l'écran
alias cls = clear  

# Liste détaillée des fichiers
alias ll = ls -l   

# Liste tous les fichiers, y compris cachés
alias la = ls -a   

# Liste simple des fichiers
alias l = ls      

# Remonte d'un dossier
alias .. = cd ..      

# Remonte de deux dossiers
alias ... = cd ../..   

# Affiche l'historique des commandes
alias h = history    

# Ouvre le dossier courant dans VS Code
alias c. = code .      

# Ouvre VS Code ou avec VS Code
alias c = code        

# ----------------------------
# GIT
# ----------------------------

# Commande git générique
alias g = git                              

# Ajoute tous les fichiers
alias ga = git add .                        

# Commit avec message
alias gc = git commit -m                     

# Clone un repo
alias gcl = git clone                         

# Pousse vers le remote
alias gp = git push                          

# Récupère les changements du remote
alias gpl = git pull                          

# Affiche le statut
alias gst = git status                         

# Log compact et graphique
alias gl = git log --oneline --graph --decorate  

# Change de branche
alias gco = git checkout                        

# Liste les branches
alias gb = git branch                          

# Pousse la branche courante vers origin
alias gpo = git push origin (git branch | lines | get 0)  

# ----------------------------
# BREW / OUTILS DEV
# ----------------------------

# Met à jour Homebrew et les paquets
alias brewu = brew update ; brew upgrade   

# Recherche un paquet
alias brews = brew search                  

# Liste les paquets installés
alias brewls = brew list
