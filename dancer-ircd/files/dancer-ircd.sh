#!/bin/sh
#
# $NetBSD$
#

# PROVIDE: dancer-ircd
# REQUIRE: DAEMON

. /etc/rc.subr

name="dancer-ircd"
rcvar=$name
command="@PREFIX@/sbin/${name}"
pidfile="/var/run/${name}.pid"
required_files="@PKG_SYSCONFDIR@/ircd.conf"

load_rc_config $name
run_rc_command "$1"
