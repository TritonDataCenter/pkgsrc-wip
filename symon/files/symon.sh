#!/bin/sh
#
# $NetBSD$
#

# PROVIDE: symon
# REQUIRE: DAEMON

. /etc/rc.subr

name="symon"
rcvar=$name
command="@PREFIX@/libexec/${name}"
required_dirs="@SYMON_HOME@"
required_files="@PKG_SYSCONFDIR@/symon.conf"

load_rc_config $name
run_rc_command "$1"
