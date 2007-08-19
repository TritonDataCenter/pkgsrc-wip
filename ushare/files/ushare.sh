#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# PROVIDE: ushare
# REQUIRE: DAEMON
#

. /etc/rc.subr

name="ushare"
rcvar=${name}
command="@PREFIX@/bin/${name}"
requre_files="@PKG_SYSCONFDIR@/ushare.conf"
command_args="--daemon"

load_rc_config ${name}
run_rc_command "$1"
