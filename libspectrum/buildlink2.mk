# $NetBSD: buildlink2.mk,v 1.2 2002/12/12 13:14:10 adam Exp $

.if !defined(LIBSPECTRUM_BUILDLINK2_MK)
LIBSPECTRUM_BUILDLINK2_MK=	# defined

BUILDLINK_PACKAGES+=		libspectrum
BUILDLINK_DEPENDS.libspectrum?=		libspectrum>=0.1.0
BUILDLINK_PKGSRCDIR.libspectrum?=	../../emulators/libspectrum

EVAL_PREFIX+=	BUILDLINK_PREFIX.libspectrum=libspectrum
BUILDLINK_PREFIX.libspectrum_DEFAULT=	${LOCALBASE}
BUILDLINK_FILES.libspectrum=	include/libspectrum.h
BUILDLINK_FILES.libspectrum+=	lib/libspectrum.*

.include "../../devel/glib/buildlink2.mk"

BUILDLINK_TARGETS+=	libspectrum-buildlink

libspectrum-buildlink: _BUILDLINK_USE

.endif	# LIBSPECTRUM_BUILDLINK2_MK
