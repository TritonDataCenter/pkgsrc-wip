#!@SH@
#
# This file used for start drweb daemon with default path to ini file.
# $NetBSD$

exec @PREFIX@/sbin/drwebd-fbsd -ini:@PKG_SYSCONFDIR@/drweb32.ini "$@"
