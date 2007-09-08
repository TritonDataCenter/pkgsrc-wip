#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: dbmaillmtpd.sh,v 1.1 2005/01/09 04:17:39 schmonz Exp $
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
