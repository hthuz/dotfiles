#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias l='ls --color=auto'
alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '

alias cls='colorls'
alias cl='colorls'
alias cdv='cd ~/.config/nvim'
alias cdd='cd ~/.dotfiles'
alias src='source ~/.bashrc'

alias gitl='git log --graph --all --oneline'
alias gits='git status'
alias gitb='git branch'
alias gitc='git checkout'

alias re='~/arch/open_doc'
alias n="nvim"
alias nv="nvim"
alias v='nvim'
alias vi='nvim'

alias ra='ranger'
alias nf='neofetch'

export GIT_TERMINAL_PROMPT=1
export EDITOR=nvim
export FZF_COMPLETION_TRIGGER='**'
export FZF_COMPLETION_OPTS='--border --info=inline'
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx

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
append_path '/home/autentico/.local/bin'

# Functions to print $PATH in a nice way
path() {
    fpath=$(echo $PATH | sed 's/:/\n/g')
    echo $fpath
}


unset -f append_path

