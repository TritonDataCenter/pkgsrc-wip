#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# PROVIDE: gopherd
# REQUIRE: DAEMON

. /etc/rc.subr

name="gofish"
rcvar="$gopherd"
command="@PREFIX@/sbin/$name"
conf_file="@PKG_SYSCONFDIR@/${name}.conf"
command_args="-d ${conf_file}"
pidfile="/var/run/${name}.pid"
required_files="${conf_file}"

start_precmd="${name}_precmd"

load_rc_config $name
run_rc_command "$1"
