#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#

# PROVIDE: stud
# REQUIRE: LOGIN

. /etc/rc.subr

name="stud"
rcvar=$name
command="@PREFIX@/bin/stud"
command_args="--config=@PKG_SYSCONFDIR@/stud.conf"
required_files="@PKG_SYSCONFDIR@/stud.conf"

load_rc_config $name
run_rc_command "$1"
