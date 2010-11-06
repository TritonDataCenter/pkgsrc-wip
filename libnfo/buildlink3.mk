# $NetBSD$

BUILDLINK_TREE+=	libnfo

.if !defined(LIBNFO_BUILDLINK3_MK)
LIBNFO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libnfo+=	libnfo>=1.0.0
BUILDLINK_PKGSRCDIR.libnfo?=	../../wip/libnfo

.include "../../textproc/libxml2/buildlink3.mk"
.endif	# LIBNFO_BUILDLINK3_MK

BUILDLINK_TREE+=	-libnfo
