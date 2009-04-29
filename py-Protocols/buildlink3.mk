# $NetBSD$
#

.include "../../lang/python/pyversion.mk"

BUILDLINK_TREE+=	pyProtocols

.if !defined(PY_PROTOCOLS_BUILDLINK3_MK)
PY_PROTOCOLS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.pyProtocols+=	${PYPKGPREFIX}-Protocols>=0.9.3
BUILDLINK_PKGSRCDIR.pyProtocols?=	../../wip/py-Protocols

.endif	# PY_PROTOCOLS_BUILDLINK3_MK

BUILDLINK_TREE+=	-pyProtocols
