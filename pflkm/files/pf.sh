#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# PROVIDE: pf
# REQUIRE: DAEMON
#

. /etc/rc.subr

name="pf"
rcvar=$name
pfctl="@PREFIX@/sbin/pfctl"
config="@PKG_SYSCONFDIR@/pf.conf"
start_cmd="${pfctl} -e -f ${config}"
stop_cmd="${pfctl} -d"
status_cmd="${pfctl} -s info"
reload_cmd="${pfctl} -f ${config}"
extra_commands="reload"

load_rc_config $name
run_rc_command "$1"
