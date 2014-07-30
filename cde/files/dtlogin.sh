#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# PROVIDE: dtlogin
# REQUIRE: DAEMON LOGIN
# KEYWORD: shutdown
#

. /etc/rc.subr

name="dtlogin"
rcvar=$name
command="@PREFIX@/dt/bin/dtlogin"
command_args="-daemon"
pidfile="@VARBASE@/dt/Xpid"
extra_commands="reload"

load_rc_config $name
run_rc_command "$1"
