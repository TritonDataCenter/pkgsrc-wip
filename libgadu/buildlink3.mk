# $NetBSD$

BUILDLINK_TREE+=	libgadu

.if !defined(LIBGADU_BUILDLINK3_MK)
LIBGADU_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libgadu+=	libgadu>=1.9.0rc2
BUILDLINK_ABI_DEPENDS.libgadu+=	libgadu>=1.9.0rc2
BUILDLINK_PKGSRCDIR.libgadu?=	../../wip/libgadu

.include "../../devel/protobuf-c/buildlink3.mk"
.endif # LIBGADU_BUILDLINK3_MK

BUILDLINK_TREE+=	-libgadu
