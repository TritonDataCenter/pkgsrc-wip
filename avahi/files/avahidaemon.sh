#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# PROVIDE: avahidaemon
# REQUIRE: DAEMON
# KEYWORD: shutdown
#

if [ -f /etc/rc.subr ]
then
	. /etc/rc.subr
fi

name="avahidaemon"
rcvar=${name}
command="@PREFIX@/sbin/avahi-daemon"
required_files="@PREFIX@/etc/avahi/avahi-daemon.conf"
avahidaemon_flags="-D"

load_rc_config $name
run_rc_command "$1"
