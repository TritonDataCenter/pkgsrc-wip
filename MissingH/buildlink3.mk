# $NetBSD$

BUILDLINK_TREE+=	MissingH

.if !defined(MISSINGH_BUILDLINK3_MK)
MISSINGH_BUILDLINK3_MK:=

BUILDLINK_DEPMETHOD.MissingH?=	build
BUILDLINK_API_DEPENDS.MissingH+=	MissingH>=1.0.2.1
BUILDLINK_PKGSRCDIR.MissingH?=	../../wip/MissingH

.include "../../wip/hslogger/buildlink3.mk"
.endif # MISSINGH_BUILDLINK3_MK

BUILDLINK_TREE+=	-MissingH
