# $NetBSD$

BUILDLINK_TREE+=	libatomic_ops

.if !defined(LIBATOMIC_OPS_BUILDLINK3_MK)
LIBATOMIC_OPS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libatomic_ops+=	libatomic_ops>=1.2
BUILDLINK_PKGSRCDIR.libatomic_ops?=	../../wip/libatomic_ops
.endif # LIBATOMIC_OPS_BUILDLINK3_MK

BUILDLINK_TREE+=	-libatomic_ops
