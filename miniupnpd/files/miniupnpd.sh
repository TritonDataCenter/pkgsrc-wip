#!/bin/sh
#
# $NetBSD$
#
# PROVIDE: miniupnpd
# REQUIRE: DAEMON

$_rc_subr_loaded . /etc/rc.subr

name="miniupnpd"
rcvar=$name
command="@PREFIX@/sbin/${name}"
configuration_file="@PKG_SYSCONFDIR@/${name}.conf"
required_files="${configuration_file}"
command_args="-f ${configuration_file}"
pidfile="/var/run/${name}.pid"

load_rc_config $name
run_rc_command "$1"
