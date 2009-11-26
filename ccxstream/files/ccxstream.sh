#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: ccxstream.sh $
#
# PROVIDE: ccxstream
# REQUIRE: DAEMON network
# KEYWORD: shutdown

. /etc/rc.subr

name="ccxstream"
rcvar=$name
command="@PREFIX@/bin/ccxstream"
command_args="-r - -f"

if [ -f /etc/rc.subr ]; then
        load_rc_config $name
        run_rc_command "$1"
else
        echo -n "${name}"
        ${command} ${ccxstream_flags} ${command_args}
fi
