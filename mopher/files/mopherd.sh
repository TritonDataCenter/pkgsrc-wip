#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# PROVIDE: mopherd
# REQUIRE: DAEMON
# BEFORE:  mail

$_rc_subr_loaded . /etc/rc.subr

name=mopherd
rcvar=$name
pidfile=@VARBASE@/run/$name.pid
command=@PREFIX@/sbin/$name
command_args="-p $pidfile"

load_rc_config $name
run_rc_command "$1"
