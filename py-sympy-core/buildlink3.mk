# $NetBSD$

BUILDLINK_TREE+=	py-sympycore

.if !defined(PY25_SYMPYCORE_BUILDLINK3_MK)
PY_SYMPYCORE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.py-sympycore+=	py-sympycore>=0.1
BUILDLINK_PKGSRCDIR.py-sympycore?=	../../wip/py-sympy-core
.endif	# PY_SYMPYCORE_BUILDLINK3_MK

BUILDLINK_TREE+=	-py-sympycore
