#!/bin/sh
#
# $NetBSD$
#

# PROVIDE: arpd
# REQUIRE: DAEMON
# BEFORE:  honeyd

. /etc/rc.subr

name="arpd"
rcvar=$name
command="@PREFIX@/sbin/${name}"
pidfile="/var/run/${name}.pid"

load_rc_config $name
run_rc_command "$1"
