#!@SH@
#
# This file used for start drweb with default path to ini file.
# $NetBSD$

exec @PREFIX@/bin/drweb-fbsd -ini:@PKG_SYSCONFDIR@/drweb32.ini "$@"
