#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#

# PROVIDE: honeyd
# REQUIRE: DAEMON
# AFTER:  honeydarpd

. /etc/rc.subr

name="honeyd"
rcvar=$name
command="@PREFIX@/bin/${name}"
pidfile="/var/run/${name}.pid"

load_rc_config $name
run_rc_command "$1"
