#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: nfsd,v 1.4 2001/06/16 06:13:10 lukem Exp $
#

# PROVIDE: nfsd
# REQUIRE: mountd

. /etc/rc.subr

name="nfsd"
rcvar="nfs_server"
command="@PREFIX@/sbin/rpc.${name}"
required_vars="mountd portmap"

load_rc_config $name
run_rc_command "$1"
