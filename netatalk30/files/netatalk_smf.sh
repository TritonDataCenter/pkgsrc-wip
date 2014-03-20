#!@SMF_METHOD_SHELL@
#
# SunOS SMF start/stop/refresh "methods" script for Netatalk 3

# $NetBSD$

PIDFILE=@VARBASE@/run/netatalk.pid

case $1 in
'start')
	@PREFIX@/libexec/netatalk/netatalk
	;;

'stop')
	if [ -f "$PIDFILE" ]; then
		/usr/bin/kill `/usr/bin/head -1 $PIDFILE`
	fi
	;;

'refresh')
	if [ -f "$PIDFILE" ]; then
		/usr/bin/kill -HUP `/usr/bin/head -1 $PIDFILE`
	fi
	;;

*)
	echo "Usage: $0 { start | stop | refresh }"
	exit 1
	;;
esac

exit $?
