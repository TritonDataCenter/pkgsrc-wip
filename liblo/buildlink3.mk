# $NetBSD$

BUILDLINK_TREE+=	liblo

.if !defined(LIBLO_BUILDLINK3_MK)
LIBLO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.liblo+=	liblo>=0.23
BUILDLINK_PKGSRCDIR.liblo?=	../../wip/liblo

.include "../../mk/pthread.buildlink3.mk"
.endif # LIBLO_BUILDLINK3_MK

BUILDLINK_TREE+=	-liblo
