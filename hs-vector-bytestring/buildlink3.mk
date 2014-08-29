# $NetBSD$

BUILDLINK_TREE+=	hs-vector-bytestring

.if !defined(HS_VECTOR_BYTESTRING_BUILDLINK3_MK)
HS_VECTOR_BYTESTRING_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-vector-bytestring+=	hs-vector-bytestring>=0.0.0
BUILDLINK_ABI_DEPENDS.hs-vector-bytestring+=	hs-vector-bytestring>=0.0.0.1nb1
BUILDLINK_PKGSRCDIR.hs-vector-bytestring?=	../../wip/hs-vector-bytestring

.include "../../devel/hs-primitive/buildlink3.mk"
.include "../../devel/hs-vector/buildlink3.mk"
.endif	# HS_VECTOR_BYTESTRING_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-vector-bytestring
