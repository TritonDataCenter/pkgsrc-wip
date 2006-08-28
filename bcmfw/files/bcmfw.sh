#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: bcmfw.sh$
#

# PROVIDE: bcmfw
# REQUIRE: mountall
# BEFORE:  bluetooth

$_rc_subr_loaded . /etc/rc.subr

name="bcmfw"
rcvar=${name}
command="@PREFIX@/sbin/${name}"
command_args="${bcmfw_args:-ugen0}"

load_rc_config ${name}
run_rc_command "$1"
