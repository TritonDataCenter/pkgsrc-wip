# $NetBSD$

BUILDLINK_TREE+=	efreet

.if !defined(EFREET_BUILDLINK3_MK)
EFREET_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.efreet+=	efreet>=1.7.0
BUILDLINK_PKGSRCDIR.efreet?=	../../wip/efreet

.include        "../../wip/ecore/buildlink3.mk"
.include        "../../wip/eet/buildlink3.mk"
.include        "../../wip/eina/buildlink3.mk"
.endif # EFREET_BUILDLINK3_MK

BUILDLINK_TREE+=	-efreet
