#!/bin/sh
#
# $NetBSD$
#
# PROVIDE: DaMon
# REQUIRE: Probe
# KEYWORD: shutdown

if [ -f /etc/rc.subr ]
then
	. /etc/rc.subr
fi

name="DaMon"
rcvar=$name
command="/usr/local/bin/DaMon"
command_args="&"
required_files="/usr/local/etc/$name.conf"
DaMon_chdir="/home/damon"
DaMon_user="damon"

load_rc_config $name
run_rc_command "$1"
