# $NetBSD: buildlink3.mk,v 1.8 2018/04/16 14:33:51 wiz Exp $

BUILDLINK_TREE+=	girara

.if !defined(GIRARA_BUILDLINK3_MK)
GIRARA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.girara+=	girara>=0.2.8
BUILDLINK_ABI_DEPENDS.girara?=	girara>=0.2.8nb2
BUILDLINK_PKGSRCDIR.girara?=	../../wip/girara

.include "../../x11/gtk3/buildlink3.mk"
.endif # GIRARA_BUILDLINK3_MK

BUILDLINK_TREE+=	-girara
