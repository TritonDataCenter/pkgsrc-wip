# $NetBSD$

.if !defined(CNEWS_BUILDLINK2_MK)
CNEWS_BUILDLINK2_MK=	# defined

BUILDLINK_PACKAGES+=		cnews
BUILDLINK_DEPENDS.cnews?=	c-news-*
BUILDLINK_PKGSRCDIR.cnews?=	../../news/cnews

EVAL_PREFIX+=			BUILDLINK_PREFIX.cnews=cnews
BUILDLINK_PREFIX.cnews_DEFAULT= ${LOCALBASE}
BUILDLINK_FILES.cnews=		include/dbz.h
BUILDLINK_FILES.cnews+=		lib/libcnews.*

BUILDLINK_TARGETS+=		cnews-buildlink

cnews-buildlink: _BUILDLINK_USE

.endif	# CNEWS_BUILDLINK2_MK
