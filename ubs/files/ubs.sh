#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#

# PROVIDE: ubs
# REQUIRE: DAEMON LOGIN

. /etc/rc.subr

name="ubs"
rcvar=$name
command="@PREFIX@/bin/${name}"
required_files="@PKG_SYSCONFDIR@/ubs.conf"
ubs_user="@UBS_USER@"
ubs_group="@UBS_GROUP@"

load_rc_config $name
run_rc_command "$1"
