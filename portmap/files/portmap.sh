#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#

# PROVIDE: portmap
# REQUIRE: NETWORKING ntpdate syslogd named ppp

. /etc/rc.subr

name="portmap"
rcvar=$name
command="@PREFIX@/sbin/${name}"
pidfile="/var/run/${name}.pid"

load_rc_config $name
run_rc_command "$1"
