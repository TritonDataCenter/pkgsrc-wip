#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# mxallowd anti-spam daemon
#
# PROVIDE: mxallowd
# REQUIRE: NETWORKING
#

if [ -f /etc/rc.subr ]; then
	. /etc/rc.subr
fi

name="mxallowd"
rcvar=${name}
command="@PREFIX@/sbin/${name}"
required_files="@PKG_SYSCONFDIR@/${name}.conf"

if [ -f /etc/rc.subr ]; then
	load_rc_config $name
	run_rc_command "$1"
else
	@ECHO@ -n " ${name}"
	${command}
fi
