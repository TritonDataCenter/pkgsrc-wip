#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#

# PROVIDE: openntpd
# REQUIRE: DAEMON
# BEFORE:  LOGIN

. /etc/rc.subr

name="ntpd"
rcvar="openntpd"
command="@PREFIX@/sbin/${name}"
required_files="@PKG_SYSCONFDIR@/ntpd.conf"

load_rc_config $name
run_rc_command "$1"
