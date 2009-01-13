# $NetBSD$

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
HSLOGGER_BUILDLINK3_MK:=	${HSLOGGER_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	hslogger
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nhslogger}
BUILDLINK_PACKAGES+=	hslogger
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}hslogger

.if ${HSLOGGER_BUILDLINK3_MK} == "+"
BUILDLINK_DEPMETHOD.hslogger?=	build
BUILDLINK_API_DEPENDS.hslogger+=	hslogger>=1.0.7
BUILDLINK_PKGSRCDIR.hslogger?=	../../wip/hslogger
.endif	# HSLOGGER_BUILDLINK3_MK

.include "../../wip/hs-mtl/buildlink3.mk"
.include "../../wip/hs-network/buildlink3.mk"
.include "../../wip/hs-time/buildlink3.mk"

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
