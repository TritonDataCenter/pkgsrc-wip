#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#

# PROVIDE: nvtvd
# REQUIRE: DAEMON

. /etc/rc.subr

name="nvtvd"
rcvar=$name
command="@PREFIX@/bin/nvtvd"

load_rc_config $name
run_rc_command "$1"
