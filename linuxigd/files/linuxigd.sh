#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# PROVIDE: linuxidg
# REQUIRE: ipnat
#
# set linuxigd_flags="ext_if int_if" in rc.conf

. /etc/rc.subr

name="linuxigd"
rcvar=${name}
command="@PREFIX@/bin/upnpd"
required_vars="ipnat"

load_rc_config ${name}
run_rc_command "$1"
