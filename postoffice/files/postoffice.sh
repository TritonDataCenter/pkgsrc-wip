#!/bin/sh
#
# $NetBSD$
#

# PROVIDE: postoffice
# REQUIRE: DAEMON

$_rc_subr_loaded . /etc/rc.subr

name="postoffice"
rcvar=$name
command="/usr/pkg/lib/${name}"
pidfile="/var/run/${name}.pid"
required_files="/usr/pkg/etc/${name}.cf"

load_rc_config $name
run_rc_command "$1"
