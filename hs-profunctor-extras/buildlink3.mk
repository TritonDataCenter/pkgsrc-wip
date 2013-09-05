# $NetBSD$

BUILDLINK_TREE+=	hs-profunctor-extras

.if !defined(HS_PROFUNCTOR_EXTRAS_BUILDLINK3_MK)
HS_PROFUNCTOR_EXTRAS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-profunctor-extras+=	hs-profunctor-extras>=3.3.3.1
BUILDLINK_PKGSRCDIR.hs-profunctor-extras?=	../../wip/hs-profunctor-extras

.endif	# HS_PROFUNCTOR_EXTRAS_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-profunctor-extras
