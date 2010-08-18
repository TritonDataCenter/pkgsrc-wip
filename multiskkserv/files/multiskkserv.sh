#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# PROVIDE: multiskkserv
# REQUIRE: DAEMON

. /etc/rc.subr
 
name="multiskkserv"
rcvar=$name
command="@PREFIX@/sbin/${name}"

multiskkserv_flags="@PREFIX@/share/skk/SKK-JISYO.L.cdb &"

load_rc_config $name
run_rc_command "$1"
