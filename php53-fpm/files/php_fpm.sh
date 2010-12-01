#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD:$
#
# PROVIDE: php_fpm
# REQUIRE: DAEMON

. /etc/rc.subr

name="php_fpm"
rcvar=${name}
command="@PREFIX@/sbin/php-fpm"
required_files="@PKG_SYSCONFDIR@/php-fpm.conf"
pidfile="@VARBASE@/run/php-fpm.pid"
sig_reload="USR2"
extra_commands="reload"

load_rc_config $name
run_rc_command "$1"
