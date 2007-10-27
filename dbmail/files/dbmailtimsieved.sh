#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#

# PROVIDE: dbmailtimsieved mail
# REQUIRE: 

. /etc/rc.subr

name="dbmailtimsieved"
rcvar=${name}
required_files="@PKG_SYSCONFDIR@/dbmail.conf"
command="@PREFIX@/sbin/dbmail-timsieved"
pidfile="@VARBASE@/run/dbmail-timsieved.pid"

load_rc_config $name
run_rc_command "$1"
