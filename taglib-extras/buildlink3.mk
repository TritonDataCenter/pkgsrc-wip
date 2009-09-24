# $NetBSD$

BUILDLINK_TREE+=	taglib-extras

.if !defined(TAGLIB_EXTRAS_BUILDLINK3_MK)
TAGLIB_EXTRAS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.taglib-extras+=	taglib-extras>=1.0.1
BUILDLINK_PKGSRCDIR.taglib-extras?=	../../wip/taglib-extras

.include "../../audio/taglib/buildlink3.mk"
.endif	# TAGLIB_EXTRAS_BUILDLINK3_MK

BUILDLINK_TREE+=	-taglib-extras
