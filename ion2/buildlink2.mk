# $NetBSD$

.if !defined(ION2_BUILDLINK2_MK)
ION2_BUILDLINK2_MK=	# defined

BUILDLINK_PACKAGES+=		ion2
BUILDLINK_DEPENDS.ion2?=	ion2
BUILDLINK_PKGSRCDIR.ion2?=	../../wm/ion2

EVAL_PREFIX+=			BUILDLINK_PREFIX.ion2=ion2
BUILDLINK_PREFIX.ion2_DEFAULT=	${LOCALBASE}
BUILDLINK_FILES.ion2=		include/ion/*.h
BUILDLINK_FILES.ion2+=		include/ion/mkexports.lua
BUILDLINK_FILES.ion2+=		include/ion/*.mk
BUILDLINK_FILES.ion2+=		include/ion/ioncore/*.h
BUILDLINK_FILES.ion2+=		include/ion/libtu/*.h
BUILDLINK_FILES.ion2+=		include/ion/luaextl/*.h

BUILDLINK_TARGETS+=		ion2-buildlink

ion2-buildlink: _BUILDLINK_USE

.endif	# ION2_BUILDLINK2_MK
