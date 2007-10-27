#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#

# PROVIDE: dbmaillmtp mail
# REQUIRE: 

. /etc/rc.subr

name="dbmaillmtpd"
rcvar=${name}
required_files="@PKG_SYSCONFDIR@/dbmail.conf"
command="@PREFIX@/sbin/dbmail-lmtpd"
pidfile="@VARBASE@/run/dbmail-lmtpd.pid"

load_rc_config $name
run_rc_command "$1"
