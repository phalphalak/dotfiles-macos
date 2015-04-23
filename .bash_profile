export PATH=/usr/local/bin:/usr/local/sbin:$HOME/.git-contrib:$HOME/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias ll='ls -alF'

#export CLICOLOR=1
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \[\033[00;31m\]$(vcprompt)\[\033[00m\]\$ '

TERM=xterm-256color

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export GREP_OPTIONS='--color=auto'
#http://it.toolbox.com/blogs/lim/how-to-fix-colors-on-mac-osx-terminal-37214

aa_256 ()
{
( x=`tput op` y=`printf %$((${COLUMNS}-6))s`;
for i in {0..256};
do
o=00$i;
echo -e ${o:${#o}-3:3} `tput setaf $i;tput setab $i`${y// /=}$x;
done )
}

# for code in {0..255}; do echo -e "\[38;05;${code}m $code: Test"; done

export JAVA_HOME=`/usr/libexec/java_home -v 1.7`

#if [ $EUID -ne 0 ] ; then
#    envfile="$HOME/.gnupg/gpg-agent.env"
#    if [[ -e "$envfile" ]] && kill -0 $(grep GPG_AGENT_INFO "$envfile" | cut -d: -f 2) 2>/dev/null; then
#        eval "$(cat "$envfile")"
#    else
#        #eval "$(gpg-agent --daemon --enable-ssh-support --write-env-file "$envfile")"
#        eval "$(gpg-agent --daemon --write-env-file "$envfile")"
#    fi
#    export GPG_AGENT_INFO  # the env file does not contain the export statement
#    export SSH_AUTH_SOCK   # enable gpg-agent for ssh
#fi

