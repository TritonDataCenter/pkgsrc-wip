#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# PROVIDE: unrealircd
# REQUIRE: DAEMON
# KEYWORD: shutdown
#

if [ -f /etc/rc.subr ]
then
	. /etc/rc.subr
fi

name="unrealircd"
rcvar=$name
command="@PREFIX@/sbin/ircd"
required_files="@IRCD_HOME@/unrealircd.conf"
command_args="-u @IRCD_USER@:@IRCD_GROUP@"

load_rc_config $name
run_rc_command "$1"
