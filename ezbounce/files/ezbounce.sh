#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#

# PROVIDE: ezbounce
# REQUIRE: DAEMON

. /etc/rc.subr

name="ezbounce"
rcvar=$name
command="@PREFIX@/sbin/${name} @PKG_SYSCONFDIR@/$name.conf"
pidfile="/var/run/${name}.pid"
required_files="@PKG_SYSCONFDIR@/$name.conf"
ezbounce_user="ezbounce"

load_rc_config $name
run_rc_command "$1"
