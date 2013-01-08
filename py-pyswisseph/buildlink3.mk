# $NetBSD$

BUILDLINK_TREE+=	py-pyswisseph

.if !defined(PY_PYSWISSEPH_BUILDLINK3_MK)
PY_PYSWISSEPH_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.py-pyswisseph+=	${PYPKGPREFIX}-pyswisseph>=1.77.00.0
BUILDLINK_PKGSRCDIR.py-pyswisseph?=	../../wip/py-pyswisseph

.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"
.endif	# PY_PYSWISSEPH_BUILDLINK3_MK

BUILDLINK_TREE+=	-py-pyswisseph
