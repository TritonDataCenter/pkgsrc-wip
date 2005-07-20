#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#

# PROVIDE: openct
# REQUIRE: DAEMON
# KEYWORD: shutdown

. /etc/rc.subr

name="openct"
rcvar=$name
command="@PREFIX@/sbin/openct-control"
required_files="@PKG_SYSCONFDIR@/openct.conf"

start_cmd="${command} init"
stop_cmd="${command} shutdown"
status_cmd="${command} status"

load_rc_config $name
run_rc_command $1
