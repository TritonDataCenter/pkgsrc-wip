#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#

# PROVIDE: jabberd
# REQUIRE: DAEMON LOGIN

. /etc/rc.subr

name="jabberd"
help_name="jabber"
rcvar=$name
command="@PREFIX@/sbin/${name}"
command_args="-B -H /var/spool/jabberd -c \$required_files"
pidfile="/var/run/${help_name}.pid"
required_files="@PKG_SYSCONFDIR@/jabber.xml"
jabberd_user="jabberd"

load_rc_config $name
run_rc_command "$1"
