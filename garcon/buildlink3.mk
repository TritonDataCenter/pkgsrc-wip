# $NetBSD: buildlink3.mk,v 1.6 2011/04/22 13:42:15 obache Exp $

BUILDLINK_TREE+=	garcon

.if !defined(garcon_BUILDLINK3_MK)
garcon_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.garcon+=	garcon>=0.1.5
BUILDLINK_ABI_DEPENDS.garcon?=	garcon>=0.1.5
BUILDLINK_PKGSRCDIR.garcon?=	../../wip/garcon

.include "../../devel/glib2/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.endif	# garcon_BUILDLINK3_MK

BUILDLINK_TREE+=	-garcon
