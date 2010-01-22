#!@RCD_SCRIPTS_SHELL@
#
#	$NetBSD$
#
# PROVIDE: bird6
# REQUIRE: DAEMON NETWORKING

if [ -f /etc/rc.subr ]
then
	. /etc/rc.subr
fi

name="bird6"
rcvar="${name}"
command="@PREFIX@/sbin/${name}"

load_rc_config $name
run_rc_command "$1"
