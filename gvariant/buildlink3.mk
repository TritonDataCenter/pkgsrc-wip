# $NetBSD$

BUILDLINK_TREE+=	gvariant

.if !defined(GVARIANT_BUILDLINK3_MK)
GVARIANT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gvariant+=	gvariant>=0
BUILDLINK_PKGSRCDIR.gvariant?=	../../wip/gvariant


.include "../../devel/glib2/buildlink3.mk"
.endif	# GVARIANT_BUILDLINK3_MK

BUILDLINK_TREE+=	-gvariant
