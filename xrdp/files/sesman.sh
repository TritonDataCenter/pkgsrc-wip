#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# PROVIDE: sesman
# REQUIRE: DAEMON
# BEFORE:  xrdp

$_rc_subr_loaded . /etc/rc.subr

name="sesman"
rcvar=$name
command="@PREFIX@/bin/sesman"
required_files="@PKG_SYSCONFDIR@/sesman.ini"

load_rc_config $name
run_rc_command "$1"
