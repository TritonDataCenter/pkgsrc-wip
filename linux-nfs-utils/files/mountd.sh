#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: mountd,v 1.11 2002/01/31 01:26:06 lukem Exp $
#

# PROVIDE: mountd
# REQUIRE: NETWORKING mountall beforemountlkm portmap quota

. /etc/rc.subr

name="mountd"
rcvar=$name
command="@PREFIX@/sbin/rpc.${name}"
required_files="@PKG_SYSCONFDIR@/exports"
start_precmd="mountd_precmd"
extra_commands="reload"

mountd_precmd()
{
	rm -f /var/lib/nfs/etab
	( umask 022 ; > /var/lib/nfs/etab ) 
	@PREFIX@/sbin/exportfs -a
}

load_rc_config $name
run_rc_command "$1"
