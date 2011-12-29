# $NetBSD$

BUILDLINK_TREE+=	m4ri

.if !defined(M4RI_BUILDLINK3_MK)
M4RI_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.m4ri+=	m4ri>=20111203
BUILDLINK_PKGSRCDIR.m4ri?=	../../category/m4ri


#.include "../../graphics/png/buildlink3.mk"
.endif	# M4RI_BUILDLINK3_MK

BUILDLINK_TREE+=	-m4ri
