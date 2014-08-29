# $NetBSD$

BUILDLINK_TREE+=	nanomsgxx

.if !defined(NANOMSGXX_BUILDLINK3_MK)
NANOMSGXX_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.nanomsgxx+=	nanomsgxx>=0.1
BUILDLINK_PKGSRCDIR.nanomsgxx?=	../../devel/nanomsgxx
.endif	# NANOMSGXX_BUILDLINK3_MK

BUILDLINK_TREE+=	-nanomsgxx
