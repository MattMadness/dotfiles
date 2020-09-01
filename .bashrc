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
alias m_wifi="sudo ifconfig wlp12s0 down && sudo ifconfig wlp12s0 up"

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

# Display this message when I enter the bash prompt
printf "\033[0;36mWindows \033[0;32m< \033[0;33mLinux \033[0;32mForever\n"
printf "\033[0;35mFree as in Freedom!\n"
printf "\n"

# Set PATH so it includes user's private bin directories
PATH="${HOME}/bin:${HOME}/.local/bin:${PATH}"

# Set prompt
#PS1="${Blue}\u@\h${NC}: ${Red}\w${NC} \\$ "
PS1="${Red}[${Cyan}\u@\h${Red}]${NC}: ${Red}\w${NC} \\$ "
