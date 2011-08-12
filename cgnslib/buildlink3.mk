# $NetBSD$

BUILDLINK_TREE+=	cgnslib-3.1.3

.if !defined(CGNSLIB_3.1.3_BUILDLINK3_MK)
CGNSLIB_3.1.3_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.cgnslib-3.1.3+=	cgnslib-3.1.3>=2
BUILDLINK_PKGSRCDIR.cgnslib-3.1.3?=	../../wip/cgnslib

.include "../../devel/hdf5/buildlink3.mk"
.endif	# CGNSLIB_3.1.3_BUILDLINK3_MK

BUILDLINK_TREE+=	-cgnslib-3.1.3
