#!/bin/sh
#
# $NetBSD$
#

# PROVIDE: maradns
# REQUIRE: DAEMON

. /etc/rc.subr

name="maradns"
rcvar=$name
command="@PREFIX@/sbin/${name}"
pidfile="/var/run/${name}.pid"
required_files="@PKG_SYSCONFDIR@/mararc"

load_rc_config $name
run_rc_command "$1"
