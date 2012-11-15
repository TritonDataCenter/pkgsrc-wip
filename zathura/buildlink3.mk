# $NetBSD: buildlink3.mk,v 1.8 2009/05/30 00:44:59 obache Exp $

BUILDLINK_TREE+=	zathura

.if !defined(ZATHURA_BUILDLINK3_MK)
ZATHURA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.zathura+=	zathura>=0.2.1
BUILDLINK_ABI_DEPENDS.zathura+=	zathura>=0.2.1
BUILDLINK_PKGSRCDIR.zathura?=	../../wip/zathura

.include "../../graphics/cairo/buildlink3.mk"
.include "../../wip/girara/buildlink3.mk"
.endif # ZATHURA_BUILDLINK3_MK

BUILDLINK_TREE+=	-zathura
