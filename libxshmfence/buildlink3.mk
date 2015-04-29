# $NetBSD$

BUILDLINK_TREE+=	libxshmfence

.if !defined(LIBXSHMFENCE_BUILDLINK3_MK)
LIBXSHMFENCE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libxshmfence+=	libxshmfence>=1.2
BUILDLINK_PKGSRCDIR.libxshmfence?=	../../wip/libxshmfence

#.include "../../x11/xproto/buildlink3.mk"
.endif	# LIBXSHMFENCE_BUILDLINK3_MK

BUILDLINK_TREE+=	-libxshmfence
