#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# PROVIDE: pfspamd
# REQUIRE: DAEMON
#

. /etc/rc.subr

name="pfspamd"
rcvar=$name
command="@PREFIX@/libexec/spamd"

pfspamd_postcmd()
{
	if [ -x @PREFIX@/libexec/spamd-setup ]; then
		@PREFIX@/libexec/spamd-setup
	fi
}

load_rc_config $name
run_rc_command "$1"
