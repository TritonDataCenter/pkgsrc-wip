# $NetBSD$
#

.if !defined(LIBPIXMAN_BUILDLINK2_MK)
LIBPIXMAN_BUILDLINK2_MK=	# defined

BUILDLINK_PACKAGES+=			libpixman
BUILDLINK_DEPENDS.libpixman?=		libpixman>=0.1.0
BUILDLINK_PKGSRCDIR.libpixman?=		../../wip/libpixman

EVAL_PREFIX+=	BUILDLINK_PREFIX.libpixman=libpixman
BUILDLINK_PREFIX.libpixman_DEFAULT=	${LOCALBASE}
BUILDLINK_FILES.libpixman+=	include/pixman.h
BUILDLINK_FILES.libpixman+=	lib/libpixman.*

BUILDLINK_TARGETS+=	libpixman-buildlink

libpixman-buildlink: _BUILDLINK_USE

.endif	# LIBPIXMAN_BUILDLINK2_MK
