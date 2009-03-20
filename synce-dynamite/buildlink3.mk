# $NetBSD: buildlink3.mk,v 1.5 2006/07/08 23:10:39 jlam Exp $

BUILDLINK_TREE+=	dynamite

.if !defined(DYNAMITE_BUILDLINK3_MK)
DYNAMITE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.dynamite+=	dynamite>=0.1
BUILDLINK_PKGSRCDIR.dynamite?=		../../wip/synce-dynamite
.endif # DYNAMITE_BUILDLINK3_MK

BUILDLINK_TREE+=	-dynamite
