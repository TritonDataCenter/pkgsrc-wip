#!/bin/sh
#
# $NetBSD: $
#

# PROVIDE: parpd
# REQUIRE: DAEMON

$_rc_subr_loaded . /etc/rc.subr

name="parpd"
rcvar=$name
command="@PREFIX@/sbin/${name}"
required_files="@PREFIX@/etc/${name}.conf"

load_rc_config $name
run_rc_command "$1"
