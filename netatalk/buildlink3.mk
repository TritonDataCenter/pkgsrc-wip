# $NetBSD: buildlink3.mk,v 1.14 2012/05/07 01:53:53 dholland Exp $

BUILDLINK_TREE+=	netatalk

.if !defined(NETATALK_BUILDLINK3_MK)
NETATALK_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.netatalk+=	netatalk>=2.0.3nb2
BUILDLINK_ABI_DEPENDS.netatalk+=	netatalk>=2.0.3nb3
BUILDLINK_PKGSRCDIR.netatalk?=	../../net/netatalk30
BUILDLINK_DEPMETHOD.netatalk?=	build
.endif # NETATALK_BUILDLINK3_MK

BUILDLINK_TREE+=	-netatalk
