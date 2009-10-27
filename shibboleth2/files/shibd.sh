#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# PROVIDE: shibd
# REQUIRE: DAEMON

if [ -f /etc/rc.subr ]; then
        . /etc/rc.subr
fi

name="shibd"
rcvar=$name
command="@PREFIX@/sbin/shibd"
pidfile="/var/run/shibboleth/shibd.pid"
command_args=""

if [ -f /etc/rc.subr ]; then
        load_rc_config $name
        run_rc_command "$1"
else
        echo -n " ${name}"
        ${command} ${shibd_flags} ${command_args}
fi
