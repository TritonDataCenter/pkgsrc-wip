# $NetBSD$

BUILDLINK_TREE+=	gmock

.if !defined(GMOCK_BUILDLINK3_MK)
GMOCK_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gmock+=	gmock>=1.6.0
BUILDLINK_PKGSRCDIR.gmock?=	../../wip/gmock

.include "../../devel/googletest/buildlink3.mk"
.endif	# GMOCK_BUILDLINK3_MK

BUILDLINK_TREE+=	-gmock
