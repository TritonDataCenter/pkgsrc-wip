# $NetBSD: buildlink3.mk,v 1.8 2009/09/16 01:15:36 reed Exp $

BUILDLINK_TREE+=	ristretto

.if !defined(XFCE4_RISTRETTO_BUILDLINK3_MK)
XFCE4_RISTRETTO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ristretto+=	ristretto>=0.0.93
BUILDLINK_PKGSRCDIR.ristretto?=	../../wip/ristretto

.endif # XFCE4_RISTRETTO_BUILDLINK3_MK

BUILDLINK_TREE+=	-ristretto
