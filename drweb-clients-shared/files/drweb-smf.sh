#!/bin/sh
#
# $NetBSD$

# PROVIDE: drwebsmf
# REQUIRE: DAEMON
# BEFORE: LOGIN

. /etc/rc.subr

name="drwebsmf"
rcvar=$name
command="@PREFIX@/sbin/drweb-smf"
procname="${command}"
start_precmd="drweb_smf_clean"
required_files="@PKG_SYSCONFDIR@/drweb-smf.conf"

drweb_smf_clean()
{
	if [ -e @DRW_SMF_SOCKFILE@ ]; then
		rm -f @DRW_SMF_SOCKFILE@
	fi
}

load_rc_config $name
run_rc_command "$1"
