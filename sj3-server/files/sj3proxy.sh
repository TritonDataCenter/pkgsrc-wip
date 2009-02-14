#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# PROVIDE: sj3proxy
# REQUIRE: sj3serv
# BEFORE: LOGIN
# KEYWORD: shutdown
#

. /etc/rc.subr

name="sj3proxy"
rcvar=$name
command="@PREFIX@/sbin/sj3proxy"

load_rc_config $name
run_rc_command "$1"
