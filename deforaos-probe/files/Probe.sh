#!/bin/sh
#
# $NetBSD$
#
# PROVIDE: Probe
# REQUIRE: DAEMON
# KEYWORD: shutdown

if [ -f /etc/rc.subr ]
then
	. /etc/rc.subr
fi

name="Probe"
rcvar=$name
command="/usr/local/bin/Probe"
command_args="&"
Probe_user="probe"

load_rc_config $name
run_rc_command "$1"
