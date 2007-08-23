#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# PROVIDE: gmediaserver
# REQUIRE: DAEMON

. /etc/rc.subr

name="gmediaserver"
rcvar=${name}
command="@PREFIX@/bin/${name}"
pidfile="/var/run/${name}.pid"
command_args="-b --pid-file=${pidfile}"
exra_commands="reload"
sig_reload=-USER1

load_rc_config ${name}
run_rc_command "$1"
