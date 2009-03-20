# $NetBSD$

BUILDLINK_TREE+=	efreet

.if !defined(EFREET_BUILDLINK3_MK)
EFREET_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.efreet+=	efreet>=0.5.0.043
BUILDLINK_ABI_DEPENDS.efreet?=	efreet>=0.5.0.043nb1
BUILDLINK_PKGSRCDIR.efreet?=	../../wip/efreet

.include        "../../wip/ecore/buildlink3.mk"
.endif # EFREET_BUILDLINK3_MK

BUILDLINK_TREE+=	-efreet
