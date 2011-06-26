# $NetBSD$

BUILDLINK_TREE+=	deforaos-cpp

.if !defined(DEFORAOS_CPP_BUILDLINK3_MK)
DEFORAOS_CPP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.deforaos-cpp+=	deforaos-cpp>=0.0.1
BUILDLINK_PKGSRCDIR.deforaos-cpp?=	../../wip/deforaos-cpp

.endif	# DEFORAOS_CPP_BUILDLINK3_MK

BUILDLINK_TREE+=	-deforaos-cpp
