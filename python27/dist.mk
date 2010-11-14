# $NetBSD$

PY_DISTVERSION=	2.7.1rc1
DISTNAME=	Python-${PY_DISTVERSION}
EXTRACT_SUFX=	.tar.bz2
DISTINFO_FILE=	${.CURDIR}/../../wip/python27/distinfo
PATCHDIR=	${.CURDIR}/../../wip/python27/patches
MASTER_SITES=	http://www.python.org/ftp/python/${PY_DISTVERSION:C/rc[0-9]$//}/
