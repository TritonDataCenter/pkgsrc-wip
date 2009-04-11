# $NetBSD$

BUILDLINK_TREE+=	libiptcdata

.if !defined(LIBIPTCDATA_BUILDLINK3_MK)
LIBIPTCDATA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libiptcdata+=	libiptcdata>=1.0.3
BUILDLINK_PKGSRCDIR.libiptcdata?=	../../wip/libipctdata


.endif	# LIBIPTCDATA_BUILDLINK3_MK

BUILDLINK_TREE+=	-libiptcdata
