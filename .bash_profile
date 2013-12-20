alias ll='ls -alF'
export PATH=/usr/local/bin:$PATH

TERM=xterm-256color

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

#echo "$(which vcprompt)"

export GREP_OPTIONS='--color=auto'

#export PS1="\u@\h:\w \$(vcprompt)\$ "
export PS1="\[\033[38;5;40m\]\u\[\033[38;5;40m\]@\[\033[38;5;40m\]\h:\[\033[38;5;154m\]\w \[\033[38;5;33m\]\$(vcprompt)\$ \[\033[00m\]"

