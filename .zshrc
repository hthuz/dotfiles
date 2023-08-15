
source ~/.bashrc
alias src="source ~/.zshrc"
PS1='[autentico@arch %1d]$'
source ~/.zplug/init.zsh

zplug "zsh-users/zsh-syntax-highlighting", as:plugin, defer:2
zplug "zsh-users/zsh-completions", as:plugin, defer:2
zplug "zsh-users/zsh-autosuggestions", as:plugin, defer:2
zplug "marlonrichert/zsh-autocomplete", as:plugin, defer:2
zplug "jeffreytse/zsh-vi-mode", as:plugin, defer:2


# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose
