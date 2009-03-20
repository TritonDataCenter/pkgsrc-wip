# $NetBSD$

BUILDLINK_TREE+=	givaro

.if !defined(GIVARO_BUILDLINK3_MK)
GIVARO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.givaro+=	givaro>=3.2.1
BUILDLINK_PKGSRCDIR.givaro?=	../../wip/givaro

.include "../../devel/gmp/buildlink3.mk"
.endif # GIVARO_BUILDLINK3_MK

BUILDLINK_TREE+=	-givaro
