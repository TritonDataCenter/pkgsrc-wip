#!/bin/sh
#
# $NetBSD: proftpd.sh,v 1.1 2003/03/22 10:15:27 jmmv Exp $
#

# PROVIDE: gnump3d
# REQUIRE: DAEMON LOGIN network
# KEYWORD: shutdown

. /etc/rc.subr

name="gnump3d"
rcvar=$name
command="@PREFIX@/bin/${name} --background"
pidfile="/var/run/${name}.pid"
required_files="@PKG_SYSCONFDIR@/gnump3d/gnump3d.conf"

load_rc_config $name
run_rc_command "$1"
