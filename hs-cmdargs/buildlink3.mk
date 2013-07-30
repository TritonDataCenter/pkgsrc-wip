# $NetBSD$

BUILDLINK_TREE+=	hs-cmdargs

.if !defined(HS_CMDARGS_BUILDLINK3_MK)
HS_CMDARGS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-cmdargs+=	hs-cmdargs>=0.10.5
BUILDLINK_PKGSRCDIR.hs-cmdargs?=	../../wip/hs-cmdargs

.endif	# HS_CMDARGS_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-cmdargs
