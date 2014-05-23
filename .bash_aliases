#       __               __              ___
#      / /_  ____ ______/ /_      ____ _/ (_)___ _________  _____
#     / __ \/ __ `/ ___/ __ \    / __ `/ / / __ `/ ___/ _ \/ ___/
#  _ / /_/ / /_/ (__  ) / / /   / /_/ / / / /_/ (__  )  __(__  )
# (_)_.___/\__,_/____/_/ /_/____\__,_/_/_/\__,_/____/\___/____/
#                         /_____/
# Author: Harold Kim
# Version: 1.0

# The various escape codes that we can use to color our prompt.
         RED="\[\033[0;31m\]"
      YELLOW="\[\033[0;33m\]"
       GREEN="\[\033[0;32m\]"
        BLUE="\[\033[0;34m\]"
   LIGHT_RED="\[\033[1;31m\]"
 LIGHT_GREEN="\[\033[1;32m\]"
LIGHT_YELLOW="\[\033[1;33m\]"
  LIGHT_BLUE="\[\033[1;34m\]"
       WHITE="\[\033[1;37m\]"
  LIGHT_GRAY="\[\033[0;37m\]"
  COLOR_NONE="\[\e[0m\]"

# Colorful Grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Directory information
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


# Make mount command output pretty and human readable format
alias mount='mount |column -t'

# Shows the PATH variable in a readble format
alias path='echo -e ${PATH//:/\\n}'

# Show open ports
alias ports='netstat -tulanp'


# Debug web server / cdn problems with curl

# get web server headers #
alias debug_curl='curl -I'

# find out if remote server supports gzip / mod_deflate or not #
alias debug_curl_compression='curl -I --compress'



# Add safety nets

alias rm='rm -I --preserve-root'
# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'



# Get system memory, cpu usage, and gpu memory info quickly

# pass options to free
alias meminfo='free -m -l -t'

# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

# get top process eating cpu
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

# Get server cpu info
alias cpuinfo='lscpu'

# Disk space inforation
alias df='df -H'
alias du='du -ch'

# Get week number
alias week='date +%V'

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~"
alias ~~='cd /var/www'
alias -- -="cd -"

# paython simpe server
alias server='python -m SimpleHTTPServer 8000'


# Set up your path environments
PATH=$PATH:~/.composer/vendor/bin
export PATH

# Update System
alias update='sudo apt-get update'


# More Shortcuts
alias www='cd /var/www/html'
alias g='git'
alias pp='git add . && git commit -m "new updates" && git push'




# ------------
# Debian based
# ------------

# Append git branch with colors
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1="${debian_chroot:+($debian_chroot)}${LIGHT_GREEN}\u@\h${COLOR_NONE}:${LIGHT_BLUE}\w${LIGHT_YELLOW}\$(parse_git_branch) ${LIGHT_RED}$ ${COLOR_NONE}"


