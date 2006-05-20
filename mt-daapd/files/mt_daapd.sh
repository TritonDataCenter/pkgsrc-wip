#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: daapd.sh,v 1.5 2006/01/01 18:34:13 tron Exp $
#

# PROVIDE: mt_daapd
# REQUIRE: DAEMON LOGIN

. /etc/rc.subr

name="mt_daapd"
rcvar=$name
command="@PREFIX@/sbin/mt-daapd"
required_files="@PKG_SYSCONFDIR@/mt-daapd.conf"
command_args="</dev/null >/dev/null 2>&1 &"

load_rc_config $name
run_rc_command "$1"
