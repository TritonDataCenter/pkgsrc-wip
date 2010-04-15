#!/bin/sh
#
# $NetBSD$
#
# PROVIDE: Init
# REQUIRE: DAEMON
# KEYWORD: shutdown

if [ -f /etc/rc.subr ]
then
	. /etc/rc.subr
fi

name="Init"
rcvar=$name
command="/usr/local/bin/Init"
command_args="&"

load_rc_config $name
run_rc_command "$1"
