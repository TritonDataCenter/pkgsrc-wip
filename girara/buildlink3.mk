# $NetBSD$

BUILDLINK_TREE+=	girara

.if !defined(GIRARA_BUILDLINK3_MK)
GIRARA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.girara+=	girara>=0.1.4
BUILDLINK_ABI_DEPENDS.girara+=	girara>=0.1.4
BUILDLINK_PKGSRCDIR.girara?=	../../wip/girara

.include "../../x11/gtk2/buildlink3.mk"
.endif # GIRARA_BUILDLINK3_MK

BUILDLINK_TREE+=	-girara
