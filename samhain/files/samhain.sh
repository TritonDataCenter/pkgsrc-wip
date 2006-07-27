#!/bin/sh

#
# $NetBSD$
#

# PROVIDE: samhain
# REQUIRE: LOGIN

. /etc/rc.subr

name="samhain"
rcvar=$name
pidfile=/var/run/samhain.pid
required_files="@PKG_SYSCONFDIR@/samhainrc @PREFIX@/var/samhain/samhain.db"

load_rc_config $name
run_rc_command "$1"
