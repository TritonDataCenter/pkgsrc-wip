#!/bin/sh
#
# $NetBSD$
#

# PROVIDE: dovecot
# REQUIRE: DAEMON

. /etc/rc.subr

name="dovecot"
rcvar=$name
command="@PREFIX@/sbin/${name}"
pidfile="/var/run/${name}.pid"
required_files="@PKG_SYSCONFDIR@/$name.conf"

load_rc_config $name
run_rc_command "$1"
