#!/bin/sh
#
# $NetBSD$
#

. /etc/rc.subr

name="ftpdtls"
rcvar=${name}

# having a - causes an error on rcvar
ftpd_tls="ftpd-tls"
command="@PREFIX@/libexec/${ftpd_tls}"

# run in daemon mode by default
command_args="-D"
pidfile="/var/run/${ftpd_tls}.pid"

load_rc_config $name
run_rc_command "$1"
