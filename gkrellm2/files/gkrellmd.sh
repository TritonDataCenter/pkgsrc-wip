#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#

# PROVIDE: gkrellmd
# REQUIRE: DAEMON

. /etc/rc.subr

name="gkrellmd"
rcvar=$name
command="@PREFIX@/bin/gkrellmd"
gkrellmd_flags="-d"

load_rc_config $name
run_rc_command "$1"
