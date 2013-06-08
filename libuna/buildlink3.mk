# $NetBSD$

BUILDLINK_TREE+=	libuna

.if !defined(LIBUNA_BUILDLINK3_MK)
LIBUNA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libuna+=	libuna>=20130103
BUILDLINK_PKGSRCDIR.libuna?=	../../wip/libuna

.include "../../wip/libcerror/buildlink3.mk"
.endif	# LIBUNA_BUILDLINK3_MK

BUILDLINK_TREE+=	-libuna
