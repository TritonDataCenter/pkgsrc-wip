#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: winbindd.sh,v 1.6 2015/01/23 08:09:37 obache Exp $
#
# PROVIDE: winbindd
# REQUIRE: DAEMON

. /etc/rc.subr

name="winbindd"
rcvar=$name
command="@PREFIX@/sbin/${name}"
pidfile="@SMB_PID@/${name}.pid"
required_files="@SMB_CONFIG@/smb.conf"
extra_commands="reload"

load_rc_config $name
run_rc_command "$1"
