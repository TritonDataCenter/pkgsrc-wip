#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$

# PROVIDE: radmind
# REQUIRE: DAEMON

. /etc/rc.subr

name="radmind"
rcvar=$name
command="@PREFIX@/sbin/${name}"

load_rc_config $name
run_rc_command "$1"
