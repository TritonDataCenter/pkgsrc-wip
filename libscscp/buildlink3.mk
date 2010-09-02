# $NetBSD$

BUILDLINK_TREE+=	libscscp

.if !defined(LIBSCSCP_BUILDLINK3_MK)
LIBSCSCP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libscscp+=	libscscp>=0.6.1
BUILDLINK_PKGSRCDIR.libscscp?=	../../wip/libscscp

.include "../../textproc/libxml2/buildlink3.mk"
.endif	# LIBSCSCP_BUILDLINK3_MK

BUILDLINK_TREE+=	-libscscp
