#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#

# PROVIDE: ypbind
# REQUIRE: ypserv
# BEFORE:  DAEMON

. /etc/rc.subr

name="ypbind"
rcvar=$name
command="@PREFIX@/sbin/${name}"
start_precmd="ypbind_precmd"

ypbind_precmd()
{
	_domain=`domainname`
	if [ -z "$_domain" ]; then
		warn "domainname(1) is not set."
		return 1
	fi
}

load_rc_config $name
run_rc_command "$1"
