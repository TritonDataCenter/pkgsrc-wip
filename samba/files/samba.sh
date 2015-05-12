#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: nmbd.sh,v 1.11 2015/01/23 08:09:37 obache Exp $
#
# PROVIDE: samba
# REQUIRE: DAEMON

. /etc/rc.subr

name="samba"
rcvar=$name
command="@PREFIX@/sbin/${name}"
pidfile="@SMB_PID@/${name}.pid"
required_files="@SMB_CONFIG@/smb.conf"
extra_commands="reload"

load_rc_config $name
run_rc_command "$1"
