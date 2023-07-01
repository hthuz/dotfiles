#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias l='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

KERNEL=$(uname -r)
ISWSL=0
[[ ${KERNEL} =~ .*WSL.* ]] && ISWSL=1


# Commn Config
alias cdv='cd ~/.config/nvim'
alias cdd='cd ~/.dotfiles'
alias src='source ~/.bashrc'
alias dd='fasd'


alias gitl='git log --graph --all --oneline'
alias gits='git status'
alias gitb='git branch'
alias gitc='git checkout'

alias re='nvim /home/autentico/arch/arch.md'
alias n="nvim"
alias nv="nvim"
alias v='nvim'
alias vi='nvim'

alias ra='ranger'

export GIT_TERMINAL_PROMPT=1
export EDITOR=nvim


export FZF_COMPLETION_TRIGGER='**'
export FZF_COMPLETION_OPTS='--border --info=inline'

# Linux Config

if [[ ISWSL -eq 0 ]] 
then
    alias cdpixel='cd ~/.local/lib/python3.11/site-packages/theme_pixel'
    alias ed='cd ~/.config/chadwm'

    alias onmo='xrandr --output eDP-1 --auto'
    alias vii='pamixer -i 5'
    alias vdd='pamixer -d 5'
    alias mute='pamixer -m'
    alias unmute='pamixer -u'

    alias vpn='sudo openconnect -u hz66 --passwd-on-stdin vpn.cites.illinois.edu'
    alias screenkey='screenkey -s small --opacity 0.5 -t 1 &'
    alias edge='microsoft-edge-dev'
    alias quartus='~/intelFPGA_lite/18.1/quartus/bin/quartus'

    export QSYS_ROOTDIR="/home/autentico/intelFPGA_lite/18.1/quartus/sopc_builder/bin"
fi

# Wsl Config
if [[ ISWSL -eq 1 ]] 
then

    alias cda="cd /mnt/d/antipattern-research"


fi






PATH="$HOME/arch:$PATH"


