# $NetBSD$

BUILDLINK_TREE+=	QuantLib

.if !defined(QUANTLIB_BUILDLINK3_MK)
QUANTLIB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.QuantLib+=	QuantLib>=1.1
BUILDLINK_PKGSRCDIR.QuantLib?=	../../wip/quantlib

.include "../../devel/boost-headers/buildlink3.mk"
.endif	# QUANTLIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-QuantLib
