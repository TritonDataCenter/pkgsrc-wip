#!/bin/sh
#
# $NetBSD: xend.sh,v 1.2 2005/04/01 19:06:12 bouyer Exp $
#
# PROVIDE: pcscd
# REQUIRE: DAEMON
# KEYWORD: shutdown 

if [ -f /etc/rc.subr ]
then
        . /etc/rc.subr
fi

name="pcscd"
rcvar=$name
command="@PREFIX@/sbin/pcscd"

load_rc_config $name
run_rc_command "$1"
