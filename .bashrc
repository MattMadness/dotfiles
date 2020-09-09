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
BYellow='\[\e[1;33m\]'	# Yellow
BBlue='\[\e[1;34m\]'	# Blue
BPurple='\[\e[1;35m\]'	# Purple
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
alias ls='ls -CFAsh --color=auto'
alias lsless="dir -CFsh --color=auto"
alias mkdir='mkdir -pv'
alias free='free -mt'
alias ps='ps auxf'
alias psgrep='ps aux | grep -v grep | grep -i -e VSZ -e'
alias wget='wget -c'
alias histg='history | grep'
alias myip='curl ipv4.icanhazip.com'
alias mylocation="geoiplookup $(curl -s ipv4.icanhazip.com)"
alias grep='grep --color=auto'
alias ddg='w3m lite.duckduckgo.com/lite'
alias yayclean='yay -Rs $(pacman -Qqdt)'

# More custom alias
alias m_bedtime="sudo pacman -Syu --noconfirm && yay -Sayu --answerclean n --answerdiff n --answeredit n --answerupgrade y --removemake --cleanafter && shutdown now"
alias m_logto="sudo dmesg -w > "
alias m_firefox="firefox &"
alias m_wifi="echo Restarting wireless interface... && sudo ifconfig wlp12s0 down && sudo ifconfig wlp12s0 up && echo Waiting 10 seconds for network to restart... && sleep 10 && echo All set!"

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
echo -e '\e[0;34m'
cat /etc/os-release | perl -n -e '/^NAME=\"([a-zA-Z ]*)\"$/ && print "$1\n"' 
echo -e '\e[0;33m'
uname -r
echo -e '\e[m'

# Set PATH so it includes user's private bin directories
PATH="${HOME}/bin:${HOME}/.local/bin:${PATH}"

# Set prompt
#PS1="${Red}[${Cyan}\u@\h${Red}]${NC}: ${Red}\w${NC} \\$ "

# Settings

# TERMCAP Setup
# enter blinking mode - red
export LESS_TERMCAP_mb=$(printf '\e[01;31m')
# enter double-bright mode - bold, magenta
export LESS_TERMCAP_md=$(printf '\e[01;35m')
# turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_me=$(printf '\e[0m')
# leave standout mode
export LESS_TERMCAP_se=$(printf '\e[0m')
# enter standout mode - green
export LESS_TERMCAP_so=$(printf '\e[01;32m')
# leave underline mode
export LESS_TERMCAP_ue=$(printf '\e[0m')
# enter underline mode - blue
export LESS_TERMCAP_us=$(printf '\e[04;34m')

# Add custom enviroment
PATH=$PATH:~/Scripts

# PS1 Setup
PROMPT_COMMAND=__prompt_command

__prompt_command() {
    local EXITCODE="$?"

    local HOSTCOLOR="5"
    local USERCOLOR="3"
    local PATHCOLOR="4"

    PS1="\e[3${HOSTCOLOR}m \h  \e[3${USERCOLOR}m \u  \e[3${PATHCOLOR}m \w  \n";

    if [ $EXITCODE == 0 ]; then
        PS1+="\e[32m\$ \e[0m";
    else
        PS1+="\e[31m\$ \e[0m";
    fi
}
