# $NetBSD$

BUILDLINK_TREE+=	pjproject

.if !defined(PJPROJECT_BUILDLINK3_MK)
PJPROJECT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.pjproject+=	pjproject>=2.1
BUILDLINK_PKGSRCDIR.pjproject?=	../../wip/pjproject

BUILDLINK_DEPMETHOD.pjproject?= build

#.include "../../devel/libuuid/buildlink3.mk"
.endif	# PJPROJECT_BUILDLINK3_MK

BUILDLINK_TREE+=	-pjproject
