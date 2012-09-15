# $NetBSD$

BUILDLINK_TREE+=	libpsurface

.if !defined(LIBPSURFACE_BUILDLINK3_MK)
LIBPSURFACE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libpsurface+=	libpsurface>=1.3.1
BUILDLINK_PKGSRCDIR.libpsurface?=	../../wip/libpsurface
.endif	# LIBPSURFACE_BUILDLINK3_MK

BUILDLINK_TREE+=	-libpsurface
