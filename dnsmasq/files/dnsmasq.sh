#!/bin/sh
#
# $NetBSD: dnsmasq.sh$
#

# PROVIDE: dnsmasq
# REQUIRE: DAEMON SERVERS

. /etc/rc.subr

name="dnsmasq"
rcvar=$name
command="@PREFIX@/sbin/${name}"
pidfile="/var/run/${name}.pid"

load_rc_config $name
run_rc_command "$1"

