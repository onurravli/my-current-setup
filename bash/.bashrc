#source "$HOME/.cargo/env"
#bind 'TAB:menu-complete'

export CHROME_EXECUTABLE=google-chrome-stable

alias google-chrome='google-chrome-stable'

####################################
alias ci='code-insiders .'
alias code='code-insiders'
alias spy='node /home/onur/GitHub/spotify-buddylist/example.js'
alias c='clear'
alias e='exit'
alias d='cd /home/onur/Desktop'
alias dw='cd /home/onur/Downloads'
alias kderes='kquitapp5 plasmashell; kstart5 plasmashell;'
alias ..='cd ..'
alias ...='cd ../..'
alias ttp='cat /sys/devices/platform/asus-nb-wmi/throttle_thermal_policy'
alias connect='ssh root@178.62.222.158'
alias vpn='openvpn3 session-start --config Downloads/profile-6.ovpn'
alias bitir='kill -9 `jobs -ps`'
alias xampp='sudo /opt/lampp/xampp'
alias ems='source "/home/onur/GitHub/emsdk/emsdk_env.sh"'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias po='poweroff'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
#####################################

iso() {
    sudo mount -o loop $1 /mnt/iso
}

case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth

shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000

shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac


if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	color_prompt=yes
    else
	color_prompt=
    fi
fi

load() {
    scp $1 root@178.62.222.158:.
}

send() {
    echo -e $2 | msmtp -a outlook $1
}

#PS1='\[\e[0;92m\][\[\e[0;92m\]\u\[\e[0;92m\]@\[\e[0;92m\]\h \[\e[0;92m\]\w\[\e[0;92m\]] \[\e[0;92m\]\$ \[\e[0m\]'

PS1='\[\e[0;92m\][\[\e[0;92m\]\u\[\e[0;92m\]@\[\e[0;92m\]\h \[\e[0;92m\]\W\[\e[0;92m\]] \[\e[0;92m\]\$ \[\e[0m\]'

unset color_prompt force_color_prompt

case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export PATH=$PATH:/usr/local/go/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# . "$HOME/.cargo/env"

ara() {
  google-chrome-stable "https://www.google.com/search?q=$1"
}


# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[ -f /home/onur/node_modules/tabtab/.completions/electron-forge.bash ] && . /home/onur/node_modules/tabtab/.completions/electron-forge.bash
