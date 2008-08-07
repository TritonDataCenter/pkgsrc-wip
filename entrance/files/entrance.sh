#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: kdm.sh,v 1.3 2004/05/31 12:21:06 markd Exp $
#

# PROVIDE: entrance
# REQUIRE: DAEMON LOGIN wscons
# KEYWORD: shutdown

if [ -f /etc/rc.subr ]; then
	. /etc/rc.subr
fi

name="entranced"
rcvar=$name
command="@PREFIX@/sbin/${name}"
pidfile="/var/run/entrance/entranced.pid"

if [ -f /etc/rc.subr ]; then
	load_rc_config $name
	run_rc_command "$1"
fi
