#!/bin/sh
#
# $NetBSD$

cd @PREFIX@/share/pearpc && exec ./ppc "$@" @PKG_SYSCONFDIR@/ppccfg.conf
exit 0
