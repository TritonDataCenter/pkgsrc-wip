# $NetBSD$

.if !defined(KORELIB_BUILDLINK2_MK)
KORELIB_BUILDLINK2_MK=    # defined

BUILDLINK_PACKAGES+=		korelib
BUILDLINK_DEPENDS.korelib?=	korelib>=1.0
BUILDLINK_PKGSRCDIR.korelib?=	../../devel/korelib

EVAL_PREFIX+=	BUILDLINK_PREFIX.korelib=korelib
BUILDLINK_PREFIX.korelib_DEFAULT=	${X11PREFIX}
BUILDLINK_FILES.korelib=		include/kore/*.h
BUILDLINK_FILES.korelib+=		lib/libkore.*

BUILDLINK_TARGETS+=	korelib-buildlink

korelib-buildlink:	_BUILDLINK_USE

.endif  # KORELIB_BUILDLINK2_MK
