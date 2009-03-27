# $NetBSD$

BUILDLINK_TREE+=	p2kmoto

.if !defined(P2KMOTO_BUILDLINK3_MK)
P2KMOTO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.p2kmoto+=	p2kmoto>=0.1rc1
BUILDLINK_PKGSRCDIR.p2kmoto?=	../../wip/p2kmoto

.include "../../devel/libusb/buildlink3.mk"
.endif # P2KMOTO_BUILDLINK3_MK

BUILDLINK_TREE+=	-p2kmoto
