#!/bin/sh
#
# $NetBSD$
#

# PROVIDE: xinetd
# REQUIRE: DAEMON
# KEYWORD: shutdown

. /etc/rc.subr

name="xinetd"
rcvar=$name
command="@PREFIX@/sbin/${name}"
pidfile="/var/run/${name}.pid"
required_files="@PKG_SYSCONFDIR@/xinetd.conf"

load_rc_config $name
run_rc_command "$1"
