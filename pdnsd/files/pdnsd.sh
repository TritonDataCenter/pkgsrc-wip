#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# PROVIDE: pdnsd
# REQUIRE: LOGIN

. /etc/rc.subr

name="pdnsd"
pidfile="/var/run/${name}.pid"
pdnsd_flags=${pdnsd_flags-"-d -p $pidfile"}
rcvar=$name
command="@PREFIX@/sbin/${name}"
required_files="@PKG_SYSCONFDIR@/pdnsd.conf"

load_rc_config $name
run_rc_command "$1"
