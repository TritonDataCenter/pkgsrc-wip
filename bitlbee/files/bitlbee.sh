#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#

# PROVIDE: bitlbee
# REQUIRE: DAEMON LOGIN

. /etc/rc.subr

name="bitlbee"
rcvar=$name
command="@PREFIX@/sbin/${name}"
command_args="-d"
bitlbee_user="bitlbee"

load_rc_config $name
run_rc_command "$1"
