#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#

# PROVIDE: jabberd
# REQUIRE: DAEMON LOGIN

. /etc/rc.subr

name="jabberd"
rcvar=$name
command="@PREFIX@/sbin/${name}"
pidfile="/var/run/${name}.pid"
required_files="@PKG_SYSCONFDIR@/jabber.xml"

load_rc_config $name
run_rc_command "$1"
