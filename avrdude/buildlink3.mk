# $NetBSD$

BUILDLINK_TREE+=	avrdude

.if !defined(AVRDUDE_BUILDLINK3_MK)
AVRDUDE_BUILDLINK3_MK:=

USE_CXX_FEATURES+=		c++11

BUILDLINK_API_DEPENDS.avrdude+=	avrdude>=7.0.0
BUILDLINK_PKGSRCDIR.avrdude?=	../../wip/avrdude
.endif	# AVRDUDE_BUILDLINK3_MK

BUILDLINK_TREE+=	-avrdude
