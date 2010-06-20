# $NetBSD: suse.i386.mk,v 1.2 2008/09/03 09:45:59 obache Exp $

# SuSE i386 RPMs; the -devel version is necessary for libGL.so et.al.
# symlinks only.
#
DISTFILES+=	freeglut-2.4.0-4.${SUSE_ARCH}.rpm
DISTFILES+=	freeglut-devel-2.4.0-4.${SUSE_ARCH}.rpm
