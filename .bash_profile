export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias ls='ls -GFhla'
#alias la="ls -la"

alias csgo='cd /CoreySSDFiles/SteamLibrary/steamapps/common/Counter-Strike\ Global\ Offensive/csgo/cfg'
alias robo='cd ~/Documents/robotics4039'
alias website='cd /Library/WebServer/Documents/code/'
alias weberr='cat /var/log/apache2/error_log'
alias agv='cd ~/Documents/robotProject'
alias bbb='screen /dev/tty.usbmodem1413 115200'
alias sshpi='ssh pi@192.168.250.185'
alias sshpieth='ssh pi@192.168.251.183'
alias sshrobo='ssh admin@10.40.39.2'

function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
 
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"
 
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w$RED\$(parse_git_branch)\[\033[m\]\$ "
export PYTHONPATH="/Library/Python/2.7/site-packages/"

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
