# $NetBSD$

BUILDLINK_TREE+=	phlib

BUILDLINK_API_DEPENDS.phlib+=	phlib>=1.20
BUILDLINK_PKGSRCDIR.phlib?=	../../wip/phlib
.endif # PHLIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-phlib
