# $NetBSD$

BUILDLINK_TREE+=	soqt

.if !defined(SOQT_BUILDLINK3_MK)
SOQT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.soqt+=	soqt>=1.4.1
BUILDLINK_PKGSRCDIR.soqt?=	../../wip/soqt

.include "../../graphics/Coin/buildlink3.mk"
.include "../../graphics/Mesa/buildlink3.mk"
.include "../../x11/qt4-libs/buildlink3.mk"
.endif	# SOQT_BUILDLINK3_MK

BUILDLINK_TREE+=	-soqt
