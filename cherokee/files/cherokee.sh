#!/bin/sh
#
# $NetBSD: tinyproxy.sh,v 1.1.1.1 2003/03/07 23:46:01 salo Exp $
#

# PROVIDE: cherokee
# REQUIRE: DAEMON

. /etc/rc.subr

name="cherokee"
rcvar=$name
command="@PREFIX@/sbin/${name} &"
pidfile="/var/run/${name}.pid"
required_files="@PKG_SYSCONFDIR@/$name.conf"

load_rc_config $name
run_rc_command "$1"
