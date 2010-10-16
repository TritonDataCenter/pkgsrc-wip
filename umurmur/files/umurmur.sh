#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# PROVIDE: umurmur
# REQUIRE: DAEMON
# KEYWORD: shutdown

. /etc/rc.subr

name="umurmur"
rcvar=$name
pidfile="@VARBASE@/run/umurmurd.pid"
command="@PREFIX@/sbin/umurmurd"
command_args="-p ${pidfile}"
required_files="@PKG_SYSCONFDIR@/umurmur.conf"

load_rc_config $name
run_rc_command "$1"
