#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#

# PROVIDE: opensc
# REQUIRE: DAEMON
# KEYWORD: shutdown

. /etc/rc.subr

name="openct"
rcvar=$name
command="@PREFIX@/sbin/opensc-control"
required_files="@PKG_SYSCONFDIR@/opensc.conf"

start_cmd="${command} init"
stop_cmd="${command} shutdown"
status_cmd="${command} status"

load_rc_config $name
run_rc_command $1
