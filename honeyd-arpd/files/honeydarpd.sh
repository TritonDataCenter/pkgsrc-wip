#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#

# PROVIDE: honeydarpd
# REQUIRE: DAEMON
# BEFORE:  honeyd

. /etc/rc.subr

name="honeydarpd"
rcvar=$name
command="@PREFIX@/sbin/honeyd-arpd"
pidfile="/var/run/honeyd-arpd.pid"

load_rc_config $name
run_rc_command "$1"
