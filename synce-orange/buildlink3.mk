# $NetBSD: buildlink3.mk,v 1.5 2006/07/08 23:10:39 jlam Exp $

BUILDLINK_TREE+=	orange

.if !defined(ORANGE_BUILDLINK3_MK)
ORANGE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.orange+=	orange>=0.3
BUILDLINK_PKGSRCDIR.orange?=		../../wip/synce-orange

.include "../../archivers/unshield/buildlink3.mk"
.include "../../comms/synce-libsynce/buildlink3.mk"
.include "../../wip/synce-dynamite/buildlink3.mk"
.endif # ORANGE_BUILDLINK3_MK

BUILDLINK_TREE+=	-orange
