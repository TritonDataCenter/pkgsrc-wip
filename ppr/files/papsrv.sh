#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# PROVIDE: papsrv
# REQUIRE: DAEMON

# Old PPR pap server
# Run only if its configfile exists.
 
if [ -f /etc/rc.subr ]; then
	. /etc/rc.subr
fi

name="papsrv"
rcvar=$name
command="@PREFIX@/libexec/ppr/bin/${name}"
required_files="@PKG_SYSCONFDIR@/ppr.conf @PKG_SYSCONFDIR@/papsrv.conf"
extra_commands="reload"

if [ -f /etc/rc.subr ]; then
	load_rc_config $name
	run_rc_command "$1"
else
	@ECHO@ -n " ${name}"
	${command} ${papsrv_flags}
fi
