#PS1='(\[$(tput md)\]\t <\w>\[$(tput me)\]) $(echo $?) \$ '

for f in /bin /sbin /usr/bin /usr/sbin /usr/local/bin /usr/local/sbin /usr/games ; do
  if [ -d $f ]; then
    PATH=$PATH:$f
  fi
done

# If running interactively, then:
if [ "$PS1" ]; then

  HISTSIZE=256
  MAILCHECK=20
  
  # A couple of default aliases.
  alias j='jobs -l'
  alias ls='ls -F'

  PS1="\u@\h:\w> "
  PS2="\u@\h> "

  if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
  fi
fi
