#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Make colorcoding available for everyone

Black='\[\e[0;30m\]'	# Black
Red='\[\e[0;31m\]'		# Red
Green='\[\e[0;32m\]'	# Green
Yellow='\[\e[0;33m\]'	# Yellow
Blue='\[\e[0;34m\]'		# Blue
Purple='\[\e[0;35m\]'	# Purple
Cyan='\[\e[0;36m\]'		# Cyan
White='\[\e[0;37m\]'	# White

# Bold
BBlack='\[\e[1;30m\]'	# Black
BRed='\[\e[1;31m\]'		# Red
BGreen='\[\e[1;32m\]'	# Green
BYellow='\[\e[1;33m\]'	# Yellow BBlue='\[\e[1;34m\]'	# Blue BPurple='\[\e[1;35m\]'	# Purple
BCyan='\[\e[1;36m\]'	# Cyan
BWhite='\[\e[1;37m\]'	# White

# Background
On_Black='\[\e[40m\]'	# Black
On_Red='\[\e[41m\]'		# Red
On_Green='\[\e[42m\]'	# Green
On_Yellow='\[\e[43m\]'	# Yellow
On_Blue='\[\e[44m\]'	# Blue
On_Purple='\[\e[45m\]'	# Purple
On_Cyan='\[\e[46m\]'	# Cyan
On_White='\[\e[47m\]'	# White

NC='\[\e[m\]'			# Color Reset

ALERT="${BWhite}${On_Red}" # Bold White on red background

# Useful aliases
alias c='clear'
alias ..='cd ..'
alias ls='ls -l --color=auto'
alias lsm="ls -al --color=auto"
alias mkdir='mkdir -pv'
alias free='free -mt'
alias ps='ps auxf'
alias psgrep='ps aux | grep -v grep | grep -i -e VSZ -e'
alias wget='wget -c'
alias histg='history | grep'
alias myip='curl ipv4.icanhazip.com'
alias grep='grep --color=auto'
alias ddg='w3m lite.duckduckgo.com/lite'
alias yayclean='pikaur -Rs $(pacman -Qqdt)'
alias inbox="neomutt -f /var/mail/$(whoami)"
alias wttr="curl wttr.in"
alias doom="~/.emacs.d/bin/doom"
alias todo="vim ~/Notes/Todo/todo.md"

# More custom alias
alias m_stopalarm="touch ~/startalarm && sleep 10 && rm ~/startalarm"
alias m_bedtime="sudo pacman -Syu --noconfirm && yay -Sayu --answerclean n --answerdiff n --answeredit n --answerupgrade y --removemake --cleanafter && shutdown now"
alias m_logto="sudo dmesg -w > "
alias m_firefox="firefox &"
alias m_wifi="echo Restarting wireless interface... && sudo ifconfig wlan0 down && sudo ifconfig wlan0 up && echo Waiting 10 seconds for network to restart... && sleep 10 && echo All set!"
alias m_rcwifi="sudo rc-service NetworkManager start && sudo rc-service smb start && sudo rc-service dnsmasq start && sudo rc-service netmount start"
alias m_xfce="cd && rm .xinitrc && echo exec startxfce4 >> .xinitrc && startx"
alias m_dwm="cd && rm .xinitrc && echo exec dwm >> .xinitrc && startx"
alias m_lxqt="cd && rm .xinitrc && echo exec startlxqt >> .xinitrc && startx"
alias m_awesome="cd && rm .xinitrc && echo exec awesome >> .xinitrc && startx"
alias m_plasmawayland="cd && rm .xinitrc && echo exec startplasma-wayland >> .xinitrc && startx"
alias m_qemu="qemu-system-x86_64 -m 3000 -boot d -smp 2 -net nic -net user" # -enable-kvm 


# Extract Function
extract () {
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xvjf $1    ;;
          *.tar.gz)    tar xvzf $1    ;;
          *.bz2)       bunzip2 $1     ;;
          *.rar)       rar x $1       ;;
          *.gz)        gunzip $1      ;;
          *.tar)       tar xvf $1     ;;
          *.tbz2)      tar xvjf $1    ;;
          *.tgz)       tar xvzf $1    ;;
          *.zip)       unzip $1       ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1        ;;
          *)           echo "don't know how to extract '$1'..." ;;
      esac
  else
      echo "'$1' is not a valid file!"
  fi
}

# Intro
#echo
#bat -p ~/Notes/Todo/todo.md
#echo
#echo "Use the todo command to edit your To-do list."
#echo

# Set PATH so it includes user's private bin directories
PATH="${HOME}/bin:${HOME}/.local/bin:${PATH}"

exitstatus()
{
    if [[ $? != 0 ]]; then
        echo -en " ${?}"
    fi
}

PS1="${Cyan}\u ${Blue}\w \n$(exitstatus)${Green}$ ${NC}"
#PS1="${Red}[${Cyan}\u${Yellow}@${Green}\h${Red}]${NC}: ${Red}\w${NC} \\$ "

# Activate command-not-found
#source /usr/share/doc/pkgfile/command-not-found.bash

# Start vi mode
set -o vi
