#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# PROVIDE: pflogd
# REQUIRE: DAEMON
#

. /etc/rc.subr

name="pflogd"
rcvar=$name
command="@PREFIX@/sbin/${name}"
start_precmd="/sbin/ifconfig pflog0 up"
pidfile="/var/run/${name}.pid"

load_rc_config $name
run_rc_command "$1"
