# $NetBSD$
#
# make configuration file for @PKGNAME@

CC=		@GCC_PREFIX@/bin/cc
CPP=		@GCC_PREFIX@/bin/cpp
ADAC=		@GCC_PREFIX@/bin/gcc
PATH:=		@GCC_PREFIX@/bin:${PATH}
