#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias l='ls --color=auto'
alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '

KERNEL=$(uname -r)
ISWSL=0
[[ ${KERNEL} =~ .*icrosoft.* ]] && ISWSL=1


# Commn Config
#
alias cls='colorls'
alias cl='colorls'
alias cdv='cd ~/.config/nvim'
alias cdd='cd ~/.dotfiles'
alias src='source ~/.bashrc'


alias gitl='git log --graph --all --oneline'
alias gits='git status'
alias gitb='git branch'
alias gitc='git checkout'

# alias re='nvim ~/arch/arch'
alias re='~/arch/open_doc'
alias n="nvim"
alias nv="nvim"
alias v='nvim'
alias vi='nvim'
alias nvimtime='nvim --startuptime /dev/stdout +qa'
alias vimtime='vim --startuptime /dev/stdout +qa'

alias ra='ranger'
alias nf='neofetch'

export GIT_TERMINAL_PROMPT=1
export EDITOR=nvim
export FZF_COMPLETION_TRIGGER='**'
export FZF_COMPLETION_OPTS='--border --info=inline'
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx

# Linux Config

if [[ ISWSL -eq 0 ]] 
then
    alias cdpixel='cd ~/.local/lib/python3.11/site-packages/theme_pixel'
    alias cdc='cd ~/.config/chadwm/chadwm'
    alias cda='cd ~/antipattern-research'
    alias cdsite='cd ~/antipattern-research/smellanalyzer/'
    alias cdsrc='cd ~/antipattern-research/smellanalyzer/project/backend'
    alias keys='setxkbmap -option caps:swapescape'
    alias cd438='cd ~/ece438/'
    alias cd450='cd ~/cs450'
    alias cd408='cd ~/ece408/Project'
    alias 391='ssh -p 63916 ta_3200110457@vps.xxcj.net'
    alias cds='cd ~/438mp2/MP2/mp2'

    alias onmo='xrandr --output eDP-1 --auto'
    alias vii='pamixer -i 5'
    alias vdd='pamixer -d 5'
    alias mute='pamixer -m'
    alias unmute='pamixer -u'
    alias xclip='xclip -selection clipboard'

    alias screenkey='screenkey -s small --opacity 0.5 -t 1 &'
    alias edge='microsoft-edge-stable'
    alias quartus='~/intelFPGA_lite/18.1/quartus/bin/quartus'

    export QSYS_ROOTDIR="/home/autentico/intelFPGA_lite/18.1/quartus/sopc_builder/bin"

format() {
    verible-verilog-format --indentation_spaces 4 $1 > $1.bak
    cp $1.bak $1
    rm $1.bak

}
fi

# Wsl Config
if [[ ISWSL -eq 1 ]] 
then

    alias cda="cd /mnt/d/antipattern-research"
    alias cdsite="cd /mnt/d/antipattern-research/site/smellanalyzer"
    alias cdsrc="cd /mnt/d/antipattern-research/src/apps/project"
    alias cdpj="cd /mnt/d/antipattern-research/src/apps/project"
    alias cddoc="cd /mnt/d/antipattern-research/src/apps/doc"
	alias cd448="cd /mnt/d/ECE448sp24/mp5/mp5_code/skeleton/part\ 1"
	alias coolc="/mnt/d/cs143/bin/coolc"
	alias spim="/mnt/d/cs143/bin/spim"


    alias arcan="java --add-opens java.base/java.util.concurrent.atomic=ALL-UNNAMED --add-opens java.base/sun.reflect.generics.reflectiveObjects=ALL-UNNAMED --add-opens java.base/sun.reflect.annotation=ALL-UNNAMED -jar /mnt/d/arcan-2.5.0-cli/Arcan2-cli-2.5.0-RELEASE-jar-with-dependencies.jar"


fi

run() {
	python mp4.py --train data/brown-training.txt --test data/brown-dev.txt --algorithm $1
}


# This is not a good way to add env var
# If you source .bashrc multiple times, it will be added for multiple times.
# export PATH=$PATH:/home/autentico

# Append "$1" to $PATH when not already in.
# This function API is accessible to scripts in /etc/profile.d
append_path () {
    # If there's no match, do nothing(;;)
    case ":$PATH:" in
    # The first case.
        *:"$1":*)
            ;;
    # *): Default pattern case if none of previous patterns match.
        *)
    # ${PATH+...}: If PATH is set, it evalutates to value after +
            PATH="${PATH:+$PATH:}$1"
    esac
}

append_path '/home/autentico'
append_path '/home/autentico/Downloads/FastX3'
append_path '/home/autentico/.local/bin'

# Functions to print $PATH in a nice way
path() {
    fpath=$(echo $PATH | sed 's/:/\n/g')
    echo $fpath
}


unset -f append_path

