#!@RCD_SCRIPTS_SHELL@
#
# was
# $NetBSD: syslogd,v 1.12.2.1 2002/06/18 23:49:44 lukem Exp $
#

# PROVIDE: syslogd
# REQUIRE: mountcritremote
# BEFORE:  SERVERS
# KEYWORD: shutdown

. /etc/rc.subr

name="syslogd"
rcvar=$name
command="@PREFIX@/sbin/${name}"
pidfile="/var/run/${name}.pid"
required_files="@PKG_SYSCONFDIR@/syslog.conf"
extra_commands="reload"

load_rc_config $name
run_rc_command "$1"
