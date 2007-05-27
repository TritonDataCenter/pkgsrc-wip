#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: $
#

# PROVIDE: cvslockd 
# REQUIRE: DAEMON

. /etc/rc.subr

name="cvslockd"
rcvar=$name
command="@PREFIX@/bin/$name"
: ${cvslockd_port:=2402}
command_args="-g -p ${cvslockd_port}"
pidfile=/var/run/${name}.pid
required_files="@PKG_SYSCONFDIR@/cvsnt/PServer"

load_rc_config $name
run_rc_command "$1"
