#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#

# PROVIDE: pdns
# REQUIRE: DAEMON

. /etc/rc.subr

name="pdns"
rcvar=$name
command="@PREFIX@/sbin/pdns_server"
command_args="--daemon=yes"
pidfile=/var/run/${name}.pid
required_files="@PKG_SYSCONFDIR@/pdns.conf"

load_rc_config $name
run_rc_command "$1"
