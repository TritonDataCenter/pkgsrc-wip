# $NetBSD$
#
# This Makefile fragment is included by packages that use premake.
#
# This file was created automatically using createbuildlink 2.6.
#

.if !defined(PREMAKE_BUILDLINK2_MK)
PREMAKE_BUILDLINK2_MK=	# defined

BUILDLINK_PACKAGES+=			premake
BUILDLINK_DEPENDS.premake?=		premake>=1.2
BUILDLINK_PKGSRCDIR.premake?=		../../wip/premake

EVAL_PREFIX+=	BUILDLINK_PREFIX.premake=premake
BUILDLINK_PREFIX.premake_DEFAULT=	${LOCALBASE}

.include "../../lang/lua/buildlink2.mk"

BUILDLINK_TARGETS+=	premake-buildlink

premake-buildlink: _BUILDLINK_USE

.endif	# PREMAKE_BUILDLINK2_MK
