# This is .bash_profile
# It is invoked only if argument 0 starts with "-",
# or if bash was started with the -login flag.

if [ -f ~/.bashrc ]; then
        source ~/.bashrc
fi

# Find out whether the shell is interactive:
case `tty|cut -d '/' -f3` in
  pts)
    export TERM=xterm
    ;;
  *)
    export TERM=cons25
    ;;
esac

echo
echo =====[ USERS ]=====
who
echo
echo =====[ UPTIME ]=====
uptime
echo
ignoreeof=yes
